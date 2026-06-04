require 'fileutils'
require 'zip'

### Extract PC booter games and rename with descriptive names for Gotek.
### 

def wipe_and_create_dir(dirname)
  # Delete the directory if it already exists
  FileUtils.rm_rf(dirname) if Dir.exist?(dirname)
  
  # Create the directory
  FileUtils.mkdir_p(dirname)
end

def create_target_dir(zip_file, extract_dir)
  base_name = File.basename(zip_file, '.*')
  target_dir = File.join(Dir.pwd, extract_dir, base_name)
  FileUtils.mkdir_p(target_dir)
  target_dir
end

# Extract zip contents into target_dir
def extract_zip_to_target(zip_file, target_dir)
  puts "Extracting #{zip_file}\n\t...into #{target_dir}" if @logging

  Zip::File.open(zip_file) do |zip|
    zip.each do |entry|
      puts "\t...extracting #{entry.name}" if @logging
      dest_path = File.join(target_dir, entry.name)
      FileUtils.mkdir_p(File.dirname(dest_path))
      entry.extract(dest_path) unless File.exist?(dest_path)
    end
  end
end

def replace_illegal_filename_chars(filename)
  filename
    .gsub(/\s\(.+?\)/, "") # Strip out any info in parens.
    .gsub(":", " -")       # change any colon chars to a space and hyphen.
    .gsub("/", "-")        # change any forward slash chars to a hyphen.
    .gsub(/[\0\r\n]/, " ") # change any NUL, CR, or new line chars to a space.
    .strip                 # Strip off any trailing whitespace.
end

# See if we can find a better name for the Gotek display
def try_for_found_name(target_dir)
  # Filter for file_id.diz case-insensitively
  file_id_path = Dir.glob(File.join(target_dir, '*'), File::FNM_CASEFOLD).find do |f|
    File.file?(f) && File.basename(f).downcase == 'file_id.diz'
  end

  found_name = nil
  if file_id_path
    candidate = File.read(file_id_path).strip
    puts "\tFound file_id.diz. Value is '#{candidate}'" if @logging

    found_name = replace_illegal_filename_chars(candidate)

    puts "\tFound name is: '#{found_name}'" if @logging
  else
    puts "\tFile_id.diz not found" if @logging
  end
  
  found_name
end

def copy_and_rename_files(from_dir, to_dir, found_name, extension)
  extension = extension.downcase
  puts "/tExtension: #{extension}"

  # Filter for all file(s) with matching extension case-insensitively
  found_files = Dir.glob(File.join(from_dir, '*'), File::FNM_CASEFOLD).select do |f|
    File.file?(f) && File.extname(f).downcase == ".#{extension}"
  end

  found_files.each do |file|
    orig_name = File.basename(file, '.*')

    new_name =
      if found_files.size > 1 && found_name && !found_name.empty?
        "#{found_name} - #{orig_name}.#{extension}"
      elsif found_files.size == 1 && found_name && !found_name.empty?
        "#{found_name}.#{extension}"
      else
        "#{orig_name}.#{extension}"
      end

    puts "\t'#{File.basename(file)}'\t-->\t'#{new_name}'" if @logging
    FileUtils.cp(file, File.join(to_dir, new_name))
  end
  nil
end

@logging = true

img_dir = 'floppy_img'
wipe_and_create_dir(img_dir)

extract_dir = 'extracted'
wipe_and_create_dir(extract_dir)

# Loop through all .zip files in the current directory (case-insensitive)
Dir.glob('*.zip', File::FNM_CASEFOLD).each do |zip_file|
  target_dir = create_target_dir(zip_file, extract_dir)
  extract_zip_to_target(zip_file, target_dir)
  found_name = try_for_found_name(target_dir)
  copy_and_rename_files(target_dir, img_dir, found_name, 'img')
  copy_and_rename_files(target_dir, img_dir, found_name, 'txt')
end

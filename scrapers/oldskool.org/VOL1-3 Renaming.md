# Rename VOL[1-3] Floppy Images from oldskool.org

* [VOL1](http://ftp.oldskool.org/pub/drivers/unsorted/misc/VOL1/)
* [VOL2](http://ftp.oldskool.org/pub/drivers/unsorted/misc/VOL2/)
* [VOL3](http://ftp.oldskool.org/pub/drivers/unsorted/misc/VOL3/)

## The Prompt

I need a ruby script for renaming files in sub-directories. The only subdirectories I'm interested are called "foo" followed by a single digit, e.g. "foo1", "foo2", "foo3". Each sub-directory contains image files whose names are simply digits followed by a ".GIF" extension, e.g. "1.GIF", "25.GIF", "99.GIF". Each sub-directory also contains a text file whose name matches its parent directory in all-caps, e.g. "FOO1.TXT", "FOO2.TXT", "FOO3.TXT". The text files contain lines with two columns each. The first two lines are header lines, but I'm not interested in those.  The rest of the lines contain the information needed to rename the ".GIF" files. These lines' column are structured as:

1. The number that matches the name of an image file in the sub-directory.
2. A variable length separator made only of whitespace.
3. The description of what is in the image

The first step should be to check for a folder called "renamed" in the directory where the script has been run. If it exists, delete it and all of its contents. Then I would like to iterate through the "foo[1-3]" directories. Each ".GIF" file should be copied into the "renamed" folder. Then the information from the text files should be used to rename it. The numbers in the text files are unique across the "foo[1-3]" sub-directories, so there are no duplicated numbers across them. I would like the new file names to be the description from the text file (column 2), a separator of " - ", and then the files original number left padded with "0" up to two characters in length.

## The Response

Thanks for the detailed clarification — super helpful! Based on your updated description, here's a complete Ruby script that:

1. Deletes the renamed folder if it exists.
1. Creates a fresh renamed folder.
1. Iterates through foo[1-3] directories.
1. Copies .GIF files into renamed, renaming them using:
    * The description from the .TXT file,
    * A " - " separator,
    * The original number left-padded to 2 digits.

## The Code

```ruby
require 'fileutils'

# Set up the output directory
renamed_dir = File.join(Dir.pwd, "renamed")

# Delete existing "renamed" folder if it exists
if Dir.exist?(renamed_dir)
  puts "Deleting existing 'renamed' folder..."
  FileUtils.rm_rf(renamed_dir)
end

# Create a new "renamed" folder
Dir.mkdir(renamed_dir)

# Process each relevant subdirectory
Dir.glob("foo[1-3]") do |subdir|
  next unless File.directory?(subdir)

  txt_filename = File.join(subdir, "#{subdir.upcase}.TXT")
  unless File.exist?(txt_filename)
    warn "Warning: Missing text file #{txt_filename}"
    next
  end

  # Read and process the text file
  lines = File.readlines(txt_filename, chomp: true)[2..] || [] # skip headers

  lines.each do |line|
    next if line.strip.empty?
    number, description = line.strip.split(/\s+/, 2)
    next unless number && description

    original_filename = File.join(subdir, "#{number}.GIF")
    unless File.exist?(original_filename)
      warn "Warning: Image file #{original_filename} not found."
      next
    end

    padded_number = number.rjust(2, '0')
    safe_description = description.gsub(/[^0-9A-Za-z.\- ]/, '_') # Clean for filesystem
    new_filename = "#{safe_description.strip} - #{padded_number}.GIF"
    new_filepath = File.join(renamed_dir, new_filename)

    puts "Copying #{original_filename} -> #{new_filepath}"
    FileUtils.cp(original_filename, new_filepath)
  end
end
```
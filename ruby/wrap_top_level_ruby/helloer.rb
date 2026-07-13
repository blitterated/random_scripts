# wrap helloerizer's top level functions in a module
module HelloerizerModule
  # load top level functions into this module
  self.module_eval File.read("helloerizer.rb")

  # Expose private function `whisper`
  def self.everyone_hears_you
    whisper
  end
end

# wrap helloerizer module functions in a class
class HelloWrap
  # load the top level functions
  extend HelloerizerModule

  # Expose private function `whisper`
  def self.everyone_hears_you
    whisper
  end
end

# Use the wrapper in another class
class Salutation
  def salutate
    HelloWrap::hello
    HelloWrap::everyone_hears_you
  end
end

Salutation.new.salutate

# Double check that the functions didn't load at top level
if defined?(hello)
  puts "hello() defined in top level!!!"
else
  puts "Top Level marked safe from a globally loaded hello()"
end

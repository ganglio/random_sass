require "random_sass/version"

require "compass"

base_directory = File.join(File.dirname(__FILE__))
Compass::Frameworks.register('random_sass', :path => base_directory)

module RandomSass
  # Your code goes here...
end

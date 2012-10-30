# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'random_sass/version'

Gem::Specification.new do |gem|
  gem.name          = "random_sass"
  gem.version       = RandomSass::VERSION
  gem.authors       = ["Roberto Torella"]
  gem.email         = ["roberto.torella@gmail.com"]
  gem.description   = %q{Sass and Compass CSS random number library}
  gem.summary       = %q{Sass and Compass CSS random number library}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "compass"
end

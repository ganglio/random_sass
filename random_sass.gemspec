# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'random_sass/version'

Gem::Specification.new do |s|
# Release Specific Information
  s.version = RandomSass::VERSION

  # Gem Details
  s.name = "random_sass"
  s.authors = ["Roberto Torella"]
  s.summary = %q{Random number generators plugin for compass.}
  s.description = %q{Random number generators plugin for compass. Allows you to use a number of random number generators in your compass files}
  s.email = "roberto.torella@gmail.com"
  s.homepage = "https://github.com/ganglio/random_sass"

  # Gem Files
  s.files = `git ls-files`.split($/)

  # Gem Bookkeeping
  s.add_dependency("sass", [">= 3.2.0.alpha.95"])
  s.add_dependency("compass", [">= 0.12.0"])
end
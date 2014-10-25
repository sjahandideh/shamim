# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shamim/version'

Gem::Specification.new do |spec|
  spec.name          = "shamim"
  spec.version       = Shamim::VERSION
  spec.authors       = ["Shamim"]
  spec.email         = ["shamim.jahandideh@gmail.com"]
  spec.summary       = %q{This gem builds Topic exchange on top of Sidekiq gem.}
  spec.description   = %q{This gem builds Topic exchange on top of Sidekiq gem..}
  spec.homepage      = "http://rubygems.org/gems/shamim"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency     "sidekiq",  "~> 3.2"

  spec.add_development_dependency "bundler",  "~> 1.6"
  spec.add_development_dependency "rake",     "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.4"
end

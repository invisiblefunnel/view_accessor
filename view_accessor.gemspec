# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'view_accessor/version'

Gem::Specification.new do |spec|
  spec.name          = "view_accessor"
  spec.version       = ViewAccessor::VERSION
  spec.authors       = ["Danny Whalen"]
  spec.email         = ["daniel.r.whalen@gmail.com"]
  spec.description   = %q{An alternative method of sharing state between Rails controllers and views.}
  spec.summary       = %q{An alternative method of sharing state between Rails controllers and views.}
  spec.homepage      = "https://github.com/invisiblefunnel/view_accessor"
  spec.license       = "MIT"

  spec.files         = Dir.glob("lib/**/*.rb") + %w(README.md )
  spec.test_files    = `git ls-files -- spec`.split($/)
  spec.require_paths = ["lib"]

  spec.add_dependency "actionpack", ">= 3.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec-rails", "~> 2.13"
end

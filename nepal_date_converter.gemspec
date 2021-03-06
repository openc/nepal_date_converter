# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nepal_date_converter/version'

Gem::Specification.new do |spec|
  spec.name          = "nepal_date_converter"
  spec.version       = NepalDateConverter::VERSION
  spec.authors       = ["Chris Taggart"]
  spec.email         = ["info@opencorporates.com"]
  spec.description   = %q{Convert Nepal Dates (BS) to AD dates}
  spec.summary       = %q{Very basic, possibly rather brittle}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "debugger"
end

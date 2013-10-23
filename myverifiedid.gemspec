# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'myverifiedid/version'

Gem::Specification.new do |spec|
  spec.name          = "myverifiedid"
  spec.version       = Myverifiedid::VERSION
  spec.authors       = ["shyam"]
  spec.email         = ["shyammohankanojia@gmail.com"]
  spec.description   = %q{This gem is an OmniAuth 2.0 Strategy for the My Verified Id API}
  spec.summary       = %q{This gem is an OmniAuth 2.0 Strategy for the My Verified Id API}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "omniauth-oauth2"

end

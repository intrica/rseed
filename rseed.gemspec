# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rseed/version'

Gem::Specification.new do |spec|
  spec.name          = "rseed"
  spec.version       = Rseed::VERSION
  spec.authors       = ["David Monagle"]
  spec.email         = ["david.monagle@intrica.com.au"]
  spec.description   = ""
  spec.summary       = %q{Assist with seeding/import of external data into models.}
  spec.homepage      = "http://github.com/intrica/rseed"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "colorize"
  spec.add_dependency "ruby-progressbar"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end

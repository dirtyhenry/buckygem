# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'buckygem/version'

Gem::Specification.new do |spec|
  spec.name          = "buckygem"
  spec.version       = Buckygem::VERSION
  spec.authors       = ["Bootstragram"]
  spec.email         = ["bootstrabot@gmail.com"]
  spec.summary       = %q{A gem for random ruby utilities.}
  spec.description   = %q{Whenever Bootstragram has a random Ruby need for which sharing makes sense but a dedicated gem does not, it ends up here.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"

  spec.add_runtime_dependency "mini_magick"
  spec.add_runtime_dependency "i18n"
  spec.add_runtime_dependency "liquid", "~> 2.6.1" # Same as Jekyll 2.5.3
end

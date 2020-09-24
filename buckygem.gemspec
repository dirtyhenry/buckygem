# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'buckygem/version'

Gem::Specification.new do |spec|
  spec.name          = 'buckygem'
  spec.version       = Buckygem::VERSION
  spec.authors       = ['Mickaël Floc’hlay']
  spec.email         = ['mick@mickf.net']
  spec.summary       = 'A gem for random ruby utilities.'
  spec.description   = 'Whenever I have a random Ruby need for which sharing
  makes sense but a dedicated gem does not, it ends up here.'
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.4.0'

  spec.add_development_dependency 'bundler', '~> 2.1'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'

  spec.add_runtime_dependency 'i18n'
  spec.add_runtime_dependency 'liquid', '~> 4.0' # Same as Jekyll 3.6.0
  spec.add_runtime_dependency 'mini_magick'
end

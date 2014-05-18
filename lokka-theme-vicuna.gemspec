# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lokka/theme/vicuna/version'

Gem::Specification.new do |spec|
  spec.name          = 'lokka-theme-vicuna'
  spec.version       = Lokka::Theme::Vicuna::VERSION
  spec.authors       = ['Masaki Komagata']
  spec.email         = ['komagata@gmail.com']
  spec.summary       = 'Simple theme for Lokka.'
  spec.description   = 'Simple theme for Lokka.'
  spec.homepage      = 'https://github.com/lokka/lokka-theme-vicuna'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($RS)
  spec.executables   = spec.files.grep(/^bin\//) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(/^(test|spec|features)\//)
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'sinatra'
  spec.add_runtime_dependency 'slim'

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
end

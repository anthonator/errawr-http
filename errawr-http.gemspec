# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'errawr/http/version'

Gem::Specification.new do |spec|
  spec.name          = 'errawr-http'
  spec.version       = Errawr::HTTP::VERSION
  spec.authors       = ['Anthony Smith']
  spec.email         = ['anthony@sticksnleaves.com']
  spec.description   = %q{Raise 4xx and 5xx HTTP status code errors using Errawr}
  spec.summary       = %q{Predefined 4xx and 5xx HTTP status codes in Errawr}
  spec.homepage      = 'http://www.github.com/anthonator/errawr-http'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'errawr', '~> 1.2.0'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
end

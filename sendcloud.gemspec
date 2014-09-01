# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sendcloud/version'

Gem::Specification.new do |spec|
  spec.name          = 'sendcloud'
  spec.version       = Sendcloud::VERSION
  spec.authors       = ['Haibin Yu']
  spec.email         = ['seashineyu@gmail.com']
  spec.description   = %q{ruby client for sohu sendcloud api}
  spec.summary       = %q{use this gem to call sohu sendcloud api}
  spec.homepage      = 'http://78jian.com'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rspec', '~> 2.4'
  spec.add_development_dependency 'rake'

  spec.add_dependency 'rest-client', '> 1.6.0'

end

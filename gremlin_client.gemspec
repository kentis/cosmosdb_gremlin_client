# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'gremlin_client/version'

Gem::Specification.new do |spec|
  spec.name          = "cosmosdb_gremlin_client"
  spec.version       = GremliClient::VERSION
  spec.authors       = ["Kent Inge F. Simonsen"]
  spec.email         = ["kent.simonsen@evry.com"]
  spec.summary       = %q{Simple Gremlin client capable of connecting to CosmosDB}
  spec.homepage      = %q{https://github.com/kentis/cosmosdb_gremlin_client}
  spec.license       = "Apache-2.0"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(spec)/})
  spec.rdoc_options  = ["--charset=UTF-8"]
  spec.require_paths = ["lib"]

  spec.add_dependency 'websocket-client-simple', '~> 0.3'
  spec.add_dependency 'oj', '~> 2.16'

  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'rake', '~> 12.0'
  spec.add_development_dependency 'rspec', '~> 3.5'
  spec.add_development_dependency 'guard-rspec', '~> 4.7'
  spec.add_development_dependency 'rubocop', '~> 0.49'
  spec.add_development_dependency 'coveralls', '~> 0.8'
end

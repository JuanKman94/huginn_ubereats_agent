# coding: utf-8
# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "huginn_ubereats_agent"
  spec.version       = '0.1'
  spec.authors       = ["juankman94"]
  spec.email         = ["juan.carlos@hey.com"]

  spec.summary       = %q{Uber Eats page parser}
  spec.description   = %q{Uber Eats page parser}

  spec.homepage      = "https://github.com/juankman94/huginn_ubereats_agent"

  spec.license       = "MIT"


  spec.files         = Dir['LICENSE.txt', 'lib/**/*']
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = Dir['test/**/*.rb'].reject { |f| f[%r{^test/huginn}] }
  spec.require_paths = ["lib"]

  spec.add_dependency "http", "~> 4.4"
  spec.add_dependency "nokogiri", "~> 1.10"
  spec.add_development_dependency "bundler", "~> 2.1"
  spec.add_development_dependency "rake", "~> 13.0"

  spec.add_runtime_dependency "huginn_agent"
end

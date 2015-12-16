# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dsl/version'

Gem::Specification.new do |spec|
  spec.name          = "dsl"
  spec.version       = Dsl::VERSION
  spec.authors       = ["Mauricio José Orta Rodríguez"]
  spec.email         = ["alu0100812930@ull.edu.es"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'http://rubygems.org'
  end

  spec.summary       = %q{Una DSL para la creación de referencias bibliográficas en formato APA y de listas que las almacenen}
  spec.homepage      = "https://github.com/alu0100812930/prct11"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

 spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rspec", "~> 2.11"
  spec.add_development_dependency "coveralls"
end

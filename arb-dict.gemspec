# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'arb/dict/version'

Gem::Specification.new do |spec|
  spec.name = "arb-dict"
  spec.version = Arb::Dict::VERSION
  spec.authors = ["arybin"]
  spec.email = ["arybin@163.com"]

  spec.summary = %q{Dictionary Base On Ruby (With The Help Of YouDao API)}
  spec.description = %q{Dictionary Base On Ruby (With The Help Of YouDao API)}
  spec.homepage = 'https://github.com/arybin-cn/arb-dict'

  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir = 'bin'
  spec.executables = 'arb-dict'
  spec.require_paths = ["lib"]

  spec.add_dependency 'slop', '4.3.0'

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end

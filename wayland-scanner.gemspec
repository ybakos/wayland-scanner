# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wayland/scanner/version'

Gem::Specification.new do |spec|
  spec.name          = "wayland-scanner"
  spec.version       = Wayland::Scanner::VERSION
  spec.authors       = ["Yong Bakos"]
  spec.email         = ["junk@humanoriented.com"]

  spec.summary       = %q{A Ruby implementation of Wayland scanner.}
  spec.description   = %q{Generate interfaces for the Wayland protocol and protocol extensions.}
  spec.homepage      = "https://github.com/ybakos/wayland-scanner"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = "~> 2.2.1"
  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 11.1"
  spec.add_development_dependency "nokogiri", "~> 1.6"
  spec.add_development_dependency "minitest", "~> 5.8"
end

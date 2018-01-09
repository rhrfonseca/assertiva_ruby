
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "assertiva/version"

Gem::Specification.new do |spec|
  spec.name          = "assertiva_ruby"
  spec.version       = Assertiva::VERSION
  spec.authors       = ["Rafael Fonseca"]
  spec.email         = ["rhrfonseca@gmail.com"]

  spec.summary       = %q{Assertiva's API client written in Ruby.}
  spec.homepage      = "https://github.com/rhrfonseca/assertiva_ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "webmock"

  spec.add_dependency "rest-client"
end

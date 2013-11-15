lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bard/sass/version'

Gem::Specification.new do |spec|
  spec.name          = "bard-sass"
  spec.version       = "0.1.0"
  spec.authors       = ["Michael Gubitosa"]
  spec.email         = ["gubito@gmail.com"]
  spec.description   = %q{Sass files across all Bot and Rose projects}
  spec.summary       = %q{Sass files across all Bot and Rose projects}
  spec.homepage      = "https://github.com/gubito/bard-sass"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "compass", "~> 0.12.2"
  spec.add_dependency "rails", ">= 3.1.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end


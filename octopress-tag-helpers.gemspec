# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'octopress-tag-helpers/version'

Gem::Specification.new do |spec|
  spec.name          = "octopress-tag-helpers"
  spec.version       = Octopress::TagHelpers::VERSION
  spec.authors       = ["Brandon Mathis"]
  spec.email         = ["brandon@imathis.com"]
  spec.summary       = %q{Making it easier to build smart Jekyll/Octopress Liquid tags.}
  spec.homepage      = "https://github.com/octopress/tag-helpers"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "jekyll", ">= 2.0"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  if RUBY_VERSION >= "2"
    spec.add_development_dependency "pry-byebug"
  end
end

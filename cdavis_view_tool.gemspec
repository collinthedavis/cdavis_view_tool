# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cdavis_view_tool/version'

Gem::Specification.new do |spec|
  spec.name          = "cdavis_view_tool"
  spec.version       = CdavisViewTool::VERSION
  spec.authors       = ["Collin"]
  spec.email         = ["collinthedavis@gmail.com"]

  spec.summary       = %q{View specific methods for applications.}
  spec.description   = %q{Creates generated HTML data for Rails applications.}
  spec.homepage      = "https://github.com/collinthedavis"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end

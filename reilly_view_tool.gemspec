
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "reilly_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "reilly_view_tool"
  spec.version       = ReillyViewTool::VERSION
  spec.authors       = ["Simon Reilly"]
  spec.email         = ["simonireilly@gmail.com"]

  spec.summary       = %q{A simple gem for displaying copyright messages}
  spec.description   = %q{Provides generated HTML}
  spec.homepage      = "https://github.com/simonireilly/reilly_view_tool"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end

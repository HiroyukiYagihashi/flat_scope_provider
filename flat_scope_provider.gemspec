lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "flat_scope_provider/version"

Gem::Specification.new do |spec|
  spec.name          = "flat_scope_provider"
  spec.version       = FlatScopeProvider::VERSION
  spec.authors       = ["Hiroyuki Yagihashi"]
  spec.email         = ["h.yagihashi2424@icloud.com"]

  spec.summary       = %q{flat_scope_provider is a gem to handle flat scope easily.}
  spec.description   = %q{Usually, when you would like to use flat scope, write "MyClass = Class.new do ~ end". You can write like "flat class MyClass ~ end" by using this Gem.}
  spec.homepage      = "https://github.com/HiroyukiYagihashi/flat_scope_provider"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/HiroyukiYagihashi/flat_scope_provider"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end

require_relative "lib/importmap-package-manager/version"

Gem::Specification.new do |spec|
  spec.name          = "importmap-package-manager"
  spec.version       = ImportmapPackageManager::VERSION
  spec.authors       = ["Derek Kniffin"]
  spec.email         = ["derek@quimbee.com"]

  spec.summary       = "Manages importmap package versions using ruby-like version constraints"
  spec.homepage      = "https://github.com/Quimbee/importmap-package-manager"
  spec.license       = "MIT"

  spec.required_ruby_version = Gem::Requirement.new(">= 2.7.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Quimbee/importmap-package-manager"

  spec.files = Dir["{lib}/**/*", "LICENSE", "Rakefile", "README.md"]

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "shadcn/version"

Gem::Specification.new do |spec|
  spec.name          = "shadcn"
  spec.version       = Shadcn::VERSION
  spec.authors       = ["Maheep Tulsian"]
  spec.email         = ["maheep2403@gmail.com"]

  spec.summary       = "Rails wrapper for shadcn/ui — install and manage shadcn components in Rails with one command."
  spec.description   = "A Ruby gem that integrates shadcn/ui into Rails applications. Provides generators to set up Tailwind and import shadcn components without manual configuration."
  spec.homepage      = "https://github.com/MaheepTulsian/rails-shadcn"
  spec.license       = "MIT" # SPDX-compliant identifier

  if spec.respond_to?(:metadata)
    spec.metadata["homepage_uri"]     = spec.homepage
    spec.metadata["source_code_uri"]  = "https://github.com/MaheepTulsian/rails-shadcn"
    spec.metadata["changelog_uri"]    = "https://github.com/MaheepTulsian/rails-shadcn/blob/main/CHANGELOG.md"
    spec.metadata["rubygems_mfa_required"] = "true"
  end

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Runtime dependencies (add if needed)
  spec.add_dependency "rails", ">= 6.1"

  # Development dependencies (modern versions)
  spec.add_development_dependency "bundler", ">= 2.0"
  spec.add_development_dependency "rake", ">= 13.0"
  spec.add_development_dependency "rspec", ">= 3.0"
end

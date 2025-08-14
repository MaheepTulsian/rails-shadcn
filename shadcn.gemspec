lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "shadcn/version"

Gem::Specification.new do |spec|
  spec.name          = "shadcn"
  spec.version       = Shadcn::VERSION
  spec.authors       = ["Maheep Tulsian"]
  spec.email         = ["maheep2403@gmail.com"]

  spec.summary       = %q{Rails wrapper for shadcn/ui — install and manage shadcn components in Rails with one command.}
  spec.description   = %q{A Ruby gem that integrates shadcn/ui into Rails applications. Provides generators to set up Tailwind and import shadcn components without manual configuration.}
  spec.homepage      = "https://github.com/MaheepTulsian/rails-shadcn"

  if spec.respond_to?(:metadata)
    # Optional: remove if not restricting push hosts
    # spec.metadata["allowed_push_host"] = "http://mygemserver.com"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/MaheepTulsian/rails-shadcn"
    spec.metadata["changelog_uri"] = "https://github.com/MaheepTulsian/rails-shadcn/blob/main/CHANGELOG.md"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end

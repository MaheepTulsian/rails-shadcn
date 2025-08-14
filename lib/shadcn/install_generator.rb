require "rails/generators"

module Shadcn
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path("../../templates/install", __FILE__)

    def install_tailwind
      unless File.exist?(Rails.root.join("tailwind.config.js"))
        say "Installing TailwindCSS..."
        system("rails tailwindcss:install")
      end
    end

    def copy_configs
      copy_file "tailwind.config.js", "tailwind.config.js", force: true
      copy_file "postcss.config.js", "postcss.config.js", force: true
    end

    def install_npm_packages
      say "Installing shadcn dependencies..."
      system("yarn add @radix-ui/react-avatar class-variance-authority tailwind-variants")
    end
  end
end

require "rails/railtie"

module Shadcn
  class Railtie < Rails::Railtie
    generators do
      require "shadcn/install_generator"
      require "shadcn/component_generator"
    end
  end
end

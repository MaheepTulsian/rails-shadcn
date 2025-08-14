module Shadcn
  class ComponentGenerator < Rails::Generators::NamedBase
    source_root File.expand_path("../../templates/components", __FILE__)

    def copy_component
      say "Adding shadcn component: #{file_name}"
      template "#{file_name}.html.erb", "app/views/components/#{file_name}.html.erb"
      template "#{file_name}.css", "app/assets/stylesheets/components/#{file_name}.css"
    end
  end
end

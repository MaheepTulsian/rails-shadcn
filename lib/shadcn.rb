require "shadcn/version"

module Shadcn
  class Error < StandardError; end
end

# Load generators if Rails is present
if defined?(Rails)
  require "shadcn/railtie"
end
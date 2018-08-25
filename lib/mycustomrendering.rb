require "mycustomrendering/version"

module Mycustomrendering
  require 'locomotive/steam'
  
  Locomotive::Steam.configure_extension do |config|
    require 'mycustomrendering/middlewares/custom_drops'
    
    config.middleware.insert_after Locomotive::Steam::Middlewares::Page, Mycustomrendering::Middlewares::CustomDrops
  end
  
end

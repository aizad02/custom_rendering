require 'mycustomrendering/liquid/drops/products'

module Mycustomrendering
  module Middlewares
    class CustomDrops

      def initialize(app)
           @app = app
       end

       def call(env)
          (env['steam.liquid_assigns'] ||= {}).tap do |assigns|
            assigns['products'] = Mycustomrendering::Liquid::Drops::Products.new
          end
          
          # ::Liquid::Context.new(liquid_assigns, {}, liquid_registers, true)

          @app.call(env)
       end
       
       # def liquid_assigns
       #   {
       #     'products'       => Mycustomrendering::Liquid::Drops::Products.new,
       #   }.merge(env['steam.liquid_assigns'])
       # end
       #
       # def liquid_registers
       #   {
       #     page:           page
       #   }
       end

    end
  end
end
module Mycustomrendering
  module Liquid
    module Drops
      class Products < ::Liquid::Drop

        def list
          [
              { 'name' => 'iPhone', 'price' => 42.0 },
              { 'name' => 'Macbook Pro', 'price' => 42.0 }
          ]
        end

      end
    end
  end
end
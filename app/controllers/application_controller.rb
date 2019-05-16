class ApplicationController < ActionController::Base
    before_action :prod

        def prod
            @products = Product.all
        end

    include CurrentOrder
        before_action :set_order
    
end

class ApplicationController < ActionController::Base
before_action :prod

    def prod
        @products = Product.all
    end
end

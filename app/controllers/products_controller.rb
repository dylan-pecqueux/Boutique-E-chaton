class ProductsController < ApplicationController

    def index
        all_products = Product.all
        puts "O"*60
    end
end

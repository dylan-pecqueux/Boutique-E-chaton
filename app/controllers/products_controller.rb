class ProductsController < ApplicationController

    def index
        @products = Product.all
    end

    def show 
        @product = Product.find(params[:id])
        @all_products = Product.all
        puts @all_products.title
    end

end

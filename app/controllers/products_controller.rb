class ProductsController < ApplicationController
    
    def index
        @products = Product.all
    end

    def show 
        @product = Product.find(params[:id])
        @products = Product.all
        i = 1 
        @products.each do |img|
          if img == @product
           @img = "chaton#{i}.jpg"
          end
          i += 1
        end
    end

end

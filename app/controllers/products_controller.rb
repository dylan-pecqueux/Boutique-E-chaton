class ProductsController < ApplicationController
    before_action :product_params, only: [:edit, :update]
    before_action :is_admin, only: [:update]
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
    def edit
    end

    def update
        @product = Product.update(product_params)
        redirect_to admin_orders_path
    end
    def destroy
        @product = Product.find(params[:id])
        @product.destroy
        redirect_to admin_products_path
    end

    private 
    def is_admin
        unless current_user.is_admin == true
            redirect_to '/'
        end
    end

    def product_params
        params.require(:product).permit(:title, :description, :price)
    end
end

class Admin::ProductsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_product, only: [:show, :edit, :update, :destroy]
    before_action :is_admin

    def index
        @products = Product.all
        @line_item = LineItem.all
    end

    def show
    end

    def new
        @product = Product.new
    end

    def create
        @product = Product.create(product_params)
        if @product.save
            redirect_to admin_products_path, :flash => { :success => "Vous avez creer votre produit avec succès" }
        else
            redirect_to new_admin_product
        end
    end

    def edit
    end

    def update
     
        @product = Product.update(product_params)
        if @product.update
            redirect_to admin_orders_path
        end
    end

    def destroy
        @product.destroy
        redirect_to admin_products_path
    end

    private

    def is_admin
        unless current_user.is_admin == true
            redirect_to '/'
        end
    end

    def set_product
        @product = Product.find(params[:id])
    end

    def product_params
        params.require(:product).permit(:title, :description, :price)
    end
end
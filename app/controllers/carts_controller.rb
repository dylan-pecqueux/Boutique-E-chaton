class CartsController < ApplicationController
    before_action :authenticate_user!, only: [:show]
    before_action :check_user, only: [:show]

    def index 
        @carts = Cart.all
    end

    def create
        @cart = Cart.create(user: current_user)
        redirect_to '/products'
    end

    def show
        @cart = Cart.find(params[:id])
    end

    def destroy
        @cart = Cart.find(params[:id])
        @items = LineItem.where(cart: @cart)
        @items.each do |item|
            item.destroy
        end
        @cart.destroy
        redirect_to '/products'
    end

    private 

    def check_user
        @cart = Cart.find(params[:id])
        redirect_to '/products' unless current_user == @cart.user
    end
end

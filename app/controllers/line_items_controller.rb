class LineItemsController < ApplicationController
    include CurrentCart
    before_action :set_cart, only: [:create]
    before_action :authenticate_user!, only: [:new,:create, :destroy]

    def new
        @line_item = LineItem.new
    end

    def create
        product = Product.find(params[:product_id])
        @line_item = @cart.add_product(product)
        
        if @line_item.save 
            redirect_to '/', success: "vous avez ajouté #{product.title} avec succès"
        else
            redirect_to '/'
        end
    end

    def destroy
        @line_item = LineItem.find(params[:id])
        @line_item.destroy
        redirect_to @line_item.cart, info: "Vous avez supprimer votre produit avec succès"
    end
end

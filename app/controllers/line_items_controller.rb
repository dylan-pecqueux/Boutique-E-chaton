class LineItemsController < ApplicationController
    include CurrentCart
    before_action :set_cart, only: [:create]

    def new
        @line_item = LineItem.new
    end

    def create
        product = Product.find(params[:product_id])
        @line_item = @cart.add_product(product)
        
        if @line_item.save 
            redirect_to @cart, success: "vous avez ajouté #{product.title} avec succès"
        else
            redirect_to '/'
        end
    end
end

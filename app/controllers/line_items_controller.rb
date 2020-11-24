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
            redirect_to products_path
        end
    end

    private

    def line_item_params
        params.require(:line_item).permit(:product_id, :cart_id, :quantity)
    end
end

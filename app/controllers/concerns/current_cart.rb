module CurrentCart
    def set_cart
        if user_signed_in?
            @cart = Cart.find_or_create_by(user_id: current_user.id)
            @cart = Cart.last
        end            
    end
end
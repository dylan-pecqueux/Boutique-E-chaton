class ChargesController < ApplicationController
    
    before_action :authenticate_user!, only: [:create, :new]
    before_action :check_user, only: [:create, :new]

    def new
        @cart = Cart.find(params[:cart_id])
    end
    
    def create
      # Amount in cents
      @cart = Cart.find(params[:cart_id])
      @amount = 500

      customer = Stripe::Customer.create({
        email: params[:stripeEmail],
        source: params[:stripeToken],
      })
    
      charge = Stripe::Charge.create({
        customer: customer.id,
        amount: @amount,
        description: 'Rails Stripe customer',
        currency: 'eur',
      })
    
    @order = Order.create(stripe_customer_id: customer.id, user_id: current_user.id) 
   
    
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_charge_path
    end

    private 

    def check_user
        @cart = Cart.find(params[:cart_id])
        redirect_to '/products' unless current_user == @cart.user
    end
end

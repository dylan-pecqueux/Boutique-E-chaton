class Admin::OrdersController < ApplicationController
    before_action :authenticate_user!
    before_action :is_admin, only: [:index]
    def index
        @orders = Order.all
    end

    private

    def is_admin
       unless current_user.is_admin == true
        redirect_to '/'
       end
    end
end
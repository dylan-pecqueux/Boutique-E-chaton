class UsersController < ApplicationController
    before_action :is_user?, only: [:show]
  

    def show 
      @user = User.find(params[:id])
    end

  
      private
  
    def is_user?
      @user = User.find(params[:id])
      unless current_user == @user
        flash[:alert] = "action impossible !"
        redirect_to "/"
      end
    end


    
end

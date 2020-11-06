class UsersController < ApplicationController
    before_action :require_logged_in, only: [:welcome]
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            render 'home'
        else
            redirect_to(controller: 'users', action: 'new')
        end
    end

    def welcome
    end
    
    private
    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end

end

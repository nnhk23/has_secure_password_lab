class SessionsController < ApplicationController

    def new
    end

    def create
        user = User.find_by(name: params[:user][:name])
        if user.authenticate(params[:user][:password])
            session[:user_id] = user.id
            redirect_to(controller: 'users', action: 'welcome')
        else
            redirect_to(controller: 'sessions', action: 'new')
        end
    end

    def destroy
        session.clear
        redirect_to login_path
    end

end

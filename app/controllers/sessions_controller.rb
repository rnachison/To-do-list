class SessionsController < ApplicationController

    skip_before_filter :authorize


    def new
    end

    def create
        user = User.where(email: params[:email]).first
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to lists_path
        else
            flash.now.alert = "Email or password is invalid"
            render "new"
        end
    end

    def destroy
        reset_session
        redirect_to home_path
    end
end
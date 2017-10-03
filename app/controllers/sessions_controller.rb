class SessionsController < ApplicationController
    def new
    end

    def create
        user = login(sessions_params)
        if user
            
            redirect_back_or_to root_url, notice: 'Logged in!'
        else
            flash.now.alert = 'Unable to login.'
            render :new
        end
    end

    def destroy
        user = User.find(params[:id])
        sign_out user
    end

    private

    def sessions_params
        params.require(:user).permit(:email, :password)
    end
end
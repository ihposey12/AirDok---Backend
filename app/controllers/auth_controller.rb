class AuthController < ApplicationController
    skip_before_action :authorized, only: [:show, :create]

    def create
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            my_token = encode_token({user_id: @user.id})
            render json: {id: @user.id, token: my_token}
        else
            render json: {error: 'User Not Found'}, status: 401
        end
    end

    def show
        render json: {id: @user}
    end
end
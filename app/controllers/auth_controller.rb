class AuthController < ApplicationController
    skip_before_action :authorized, only: [:show, :create]

    def create
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            my_token = encode_token({user_id: @user.id})
            render json: {user: @user, token: my_token, success: 'Welcome back!'}, include: [:comments, :hangars]
        else
            render json: {error: 'Uh oh! Username and/or Password is invalid!'}, status: 401
        end
    end

    def show
        render json: {id: @user}
    end
end
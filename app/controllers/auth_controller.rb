class AuthController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def create
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            my_token = encode_token({user_id: @user.id})
            render json: {user: UserSerializer.new(@user), token: my_token, success: 'Welcome back!'}
        else
            render json: {error: 'Uh oh! Username and/or Password is invalid!'}, status: 401
        end
    end

    def show
        render json: {user: UserSerializer.new(@user)}
    end
end
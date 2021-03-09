class UsersController < ApplicationController
    skip_before_action :authorized, only: [:show, :create]

    def show
        user = User.find(params[:id])
        render json: user
    end

    def create
        @user = User.create(user_params)

        if @user.valid?
            my_token = encode_token({user_id: @user})
            render json: {user: UserSerializer.new(@user), token: my_token}
        else
            render json: {error: 'failed to create a user'}
        end
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        render json: {message: 'User successfully deleted!'}
    end

    private

    def user_params
        params.require(:user).permit(:name, :username, :password, :email)
    end
end
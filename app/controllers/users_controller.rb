class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]

    # def new

    # end

    def create
        @user = User.create(user_params)

        if @user.valid?
            my_token = encode_token({user_id: @user.id})
            render json: {id: @user.id, username: @user.username, token: my_token}
        else
            render json: {error: 'failed to create a user'}
        end
    end

    # def edit

    # end

    # def update
        
    # end

    # def destroy

    # end

    private

    def user_params
        params.require(:user).permit(:name, :username, :email, :password)
    end
end
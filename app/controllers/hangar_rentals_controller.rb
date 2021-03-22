class HangarRentalsController < ApplicationController
    def index
        hangar_rentals = HangarRental.where(user_id: @user.id)
        render json: hangar_rentals, status: 200
    end

    def show
        hangar_rental = HangarRental.find(params[:id])
        render json: hangar_rental
    end

    def create
        @rental = HangarRental.new(rental_params)
        
        if @rental.save
            render json: {user: UserSerializer.new(@user)}
        else
            render json: {error: @rental.errors.messages}
        end
    end

    private

    def rental_params
        params.require(:hangar_rental).permit(:start_date, :end_date, :hangar_id, :user_id)
    end
end
class HangarRentalsController < ApplicationController
    def index
        hangar_rentals = HangarRental.where(user_id: @user.id)
        render json: hangar_rentals, status: 200
    end

    def show
        hangar_rental = HangarRental.find(params[:id])
    end
end
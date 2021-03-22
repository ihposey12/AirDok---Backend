class HangarsController < ApplicationController
    skip_before_action :authorized, only: [:index]

    def index
        @hangars = Hangar.all
        render json: @hangars
    end

    def show
        hangar = Hangar.find(params[:id])
        render json: HangarSerializer.new(hangar)
    end
end
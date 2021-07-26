class SuperFansController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :not_found

    def index
        render json: SuperFan.all
    end

    def destroy
        fan = SuperFan.find(params[:id])
        fan.destroy
        head :no_content
    end

    private

    def not_found(invalid)
        render json: {error: invalid}, status: 404
    end
end

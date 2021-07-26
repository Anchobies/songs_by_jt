class SongsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :not_found

    def index
        render json: Song.all
    end

    def show
        song = Song.find(params[:id])
        render json: song 
    end

    def top_charts
        top = Song.all.max_by { |song| song.reviews.count }
        render json: top
    end

    private

    def not_found(invalid)
        render json: {errors: invalid}, status: 404
    end
end

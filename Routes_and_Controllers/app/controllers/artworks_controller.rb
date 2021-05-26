class ArtworksController < ApplicationController
    def create
        u = Artwork.create(artwork_params(params))
        if u.save
            render json: u
        else
            u.errors.full_messages status: :unprocessable_entity
        end
    end

    def artwork_params(params)
        params.require(:artwork).permit(:title, :image_url, :artist_id)
    end

    def index
        render json: Artwork.find_by(artist_id: {id: params[:user_id]})
    end

    def update
        a = Artwork.find(params[:id])

        if a.update(user_params(params))
            render json: a
        else
            render json: a.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        a = Artwork.destroy(params[:id])
        if a
            render json: a
        else
            render json: a.errors.full_messages
        end
    end

    def show
        render json: Artwork.find(params[:id])
    end
end
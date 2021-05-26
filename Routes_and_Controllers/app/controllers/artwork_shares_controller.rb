class ArtworkShares < ApplicationController
    def create
        u = ArtworkShare.create(shares_params(params))
        if u.save
            render json: u
        else
            render json: u.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        u = ArtworkShare.find(params[:id])
        render json: u.destroy
    end

    def shares_params(params)
        params.require(:artwork_share).permit(:artwork_id, :viewer_id)
    end
end
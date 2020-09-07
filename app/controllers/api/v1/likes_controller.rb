class Api::V1::LikesController < ApplicationController

    def create
    end

    def destroy
    end

    private
    def like_params
        params.require(:like).permit(:liker, :post)
    end
end

class Api::V1::LikesController < ApplicationController

    def index
        post = Post.find(params[:post_id]) 
        likes = post.likes

        render json: likes
    end

    def create
        like = Like.new(like_params)

        if like.save
            render json: like, status: :created, location: like
        else
            render json: like.errors, status: :unprocessable_entity
        end
    end

    def destroy
        like = Like.find_by(params[:id])

        like.destroy
    end

    private
    def like_params
        params.require(:like).permit(:liker, :post)
    end
end

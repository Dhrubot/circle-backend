class Api::V1::LikesController < ApplicationController

    def index
        post = Post.find(params[:post_id]) 
        likes = post.likes

        render json: likes
    end


    def create
        post = Post.find_by(id: params[:post_id])
        like = post.likes.build(like_params)

        if like.save
            render json: like, status: :created
        else
             resp = {
                error: like.errors.full_messages.to_sentence
            }
            render json: resp, status: :unprocessable_entity
        end
    end

    def destroy
        like = Like.find_by(params[:id])

        like.destroy
    end

    private
    def like_params
        params.require(:like).permit(:liker_id, :post_id)
    end
end

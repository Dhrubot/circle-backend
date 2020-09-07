class Api::V1::PostsController < ApplicationController

    def index
        posts = Post.all

        render json: posts, include: ['comments', 'comments.commentor', 'likes', 'likes.liker']
    end

    def show
        post = Post.find_by(id: params[:id])

        render json: post, include: ['comments', 'comments.commentor', 'likes', 'likes.liker']
    end

    def create
        post = Post.new(post_params)

        if post.save
            render json: post, status: :created, location: post
        else
      r     ender json: post.errors, status: :unprocessable_entity
        end
    end

    def update
        if post.update(post_params)
            render json: post
        else
            render json: post.errors, status: :unprocessable_entity
        end
    end

    def destroy
        post = Post.find_by(id: params[:id])
        post.destroy
    end

    private
    
    def post_parmas
        params.require(:post).permit(:title, :description, :location, :author)
    end

end

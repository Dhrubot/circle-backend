class Api::V1::CommentsController < ApplicationController

    before_action :set_post

    def index
        comments = @post.comments

        render json: comments
    end

    def show
        comment = @post.comments.find_by(id: params[:id])

        render json: comment
    end

    def create
        comment = @post.comments.build(comment_params)

        if comment.save
            render json: comment, status: :created, location: comment
        else
            render json: comment.errors, status: :unprocessable_entity
        end
    end

    def update
        comment = @post.comments.find_by(id: params[:id])

        if comment.update(comment_params)
            render json: comment
        else
            render json: comment.errors, status: :unprocessable_entity
        end
    end

    def destroy
        comment = @post.comment.find_by(id: params[:id])
        comment.destroy
    end

    private

    def set_post
        @post = Post.find_by(id: params[:post_id])
    end
    
    def comment_parmas
        params.require(:comment).permit(:body, :post, :commentor)
    end
end

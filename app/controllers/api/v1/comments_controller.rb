class Api::V1::CommentsController < ApplicationController

    def index
        comments = Comment.all

        render json: comments
    end

    def show
        comment = Comment.find_by(id: params[:id])

        render json: comment
    end

    def create
        comment = Comment.new(comment_params)

        if comment.save
            render json: comment, status: :created, location: comment
        else
            render json: comment.errors, status: :unprocessable_entity
        end
    end

    def update
        if comment.update(comment_params)
            render json: comment
        else
            render json: comment.errors, status: :unprocessable_entity
        end
    end

    def destroy
        comment = Comment.find_by(id: params[:id])
        comment.destroy
    end

    private
    
    def comment_parmas
        params.require(:comment).permit(:body, :post, :commentor)
    end
end

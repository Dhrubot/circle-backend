class Api::V1::PostsController < ApplicationController

    def index
        user = User.find_by(id: params[:user_id])
        posts = user.authored_posts

        render json: posts
    end

    def show
        post = Post.find_by(id: params[:id])

        render json: post, include: ['comments', 'comments.commentor', 'likes', 'likes.liker']
    end

    def create
        post = current_user.authored_posts.build(post_params)

        if post.save
            render json: post, status: :created
        else
             resp = {
                error: post.errors.full_messages.to_sentence
            }
            render json: resp, status: :unprocessable_entity
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

        if post.destroy
            render json: post, status: :ok
        else
            error_resp = {
                error: "Post not found and not destroyed"
            }
            render json: error_resp, status: :unprocessable_entity
        end
    end

    private
    
    def post_params
        params.require(:post).permit(:title, :description, :location, :author)
    end

end

class Api::V1::FollowerFollowingsController < ApplicationController

    def create
        following = @user.following.build(following_params)

        if following.save
            render json: following
        else
            render json: following.errors, status: :unprocessable_entity
        end

    end

    def destroy
        following = @user.followings.find_by(following: following_params)
        following.destroy
    end

    private

    def set_user
        @user = User.find_by(id: params[:user_id])
    end

    def following_params
        params.permit(:followerfollowing).permit(:following)
    end
end

class CommentsController < ApplicationController

    def create
     comment = fetch_user.comments.create!(comment_params)
     render json: comment
    end



    private

    def comment_params
        params.permit(:description, :user_id, :tweet_id)
    end
end

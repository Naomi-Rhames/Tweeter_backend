class CommentsController < ApplicationController

    def create
        byebug
     comment = logged_in.comments.create!(comment_params)
     render :json comment
    end



    private
    def comment_params
        params.permit(:description, :user_id, :tweet_id)
    end
end

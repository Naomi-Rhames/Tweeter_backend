class CommentsController < ApplicationController

    def create
     
     user = fetch_user.id
    #  byebug
     comment = Comment.create(description: comment_params[:description], tweet_id: comment_params[:tweet_id].to_i, user_id: user)
    #  byebug
    #  comment = logged_in.comments.create!(comment_params)
     render json: comment
    end



    private
    def comment_params
        params.permit(:description, :user_id, :tweet_id)
    end
end

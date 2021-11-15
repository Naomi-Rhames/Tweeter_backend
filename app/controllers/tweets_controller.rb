class TweetsController < ApplicationController


    def index
        tweet = Tweet.all
        render json: tweet
    end
    
    def create
        tweet = Tweet.new(tweet_params)
        if tweet.save
            render json: tweet
        else
            render json: {error: tweet.errors.full_messages},  status: :unprocessable_entity
        end
    end

    private

    def tweet_params
        params.permit(:image_url, :description, :user_id)
    end
end
class TweetsController < ApplicationController

    def index
        tweet = Tweet.all
        render json: tweet
    end
    
    def search
        tweet = Tweet.where(description: params[:description]).first
        render json: tweet
    end


    def create
        # byebug
       if tweet = Tweet.new(tweet_params)
         tweet.save
            render json: tweet
        else
            render json: {error: tweet.errors.full_messages},  status: 403
        end
    end

    

    def show
        tweet = Tweet.find(params[:id])
        render json: tweet, serializer: TweetSerializer
    end

    def delete
    

    end

    private

    def tweet_params
        params.permit(:image_url, :description, :user_id)
    end


end
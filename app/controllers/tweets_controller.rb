class TweetsController < ApplicationController
    def index
        @tweet=Tweet.all 
    end
    def new
        @tweet=Tweet.new
    end
    def create
        tweet=Tweet.new(tweet_params)
        if tweet.save
            redirect_to root_path
        else
            redirect_to new_tweets_path
        end
    end
    def about
    end
    private
    def tweet_params
        params.require(:tweet).permit(:content)
    end
end

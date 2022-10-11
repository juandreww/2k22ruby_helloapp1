class TweetsController < ApplicationController
    before_action :require_user_logged_in!

    def index
        @tweets = Current.user.tweets
    end

    def new
        @tweet = Tweet.new
    end

    def create
        @tweet = Current.user.tweets.create(tweet_params)
        if @tweet.save
            redirect_to @tweet, notice: "Tweet was scheduled successfully"
        else
            render :new, status: :unprocessable_entity
        end
    end

    private

    def tweet_params
        params.require(:tweet).permit(:twitter_account, :body, :publish_at)
    end
end
class LikesController < ApplicationController
  def create 
    tweet = Tweet.find(params[:tweet_id])
    unless tweet.liked?(current user)
      tweet.like(current user)
    end
    redirect_to root_path
  end

  def destroy
    tweet = Tweet.find(params[:id])
    if tweet.like?(current user)
      tweet.unlike(current user)
    end
    redirect_to root_path
  end
end

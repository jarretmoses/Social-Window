class SocialsController < ApplicationController
  def index
    # @tweets = get_tweets
    @tweets =[]
  end

  private
  def get_tweets
     @client.home_timeline.map {|tweet| "#{tweet.user.username}: #{tweet.text}"}
  end
end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :create_client

  def create_client
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['TWITTER_KEY']
      config.consumer_secret     = ENV['TWITTER_SECRET']
      config.access_token        = ENV['MY_TWITTER_KEY']
      config.access_token_secret = ENV['MY_TWITTER_SECRET']
    end 
    # @client = Twitter::Streaming::Client.new do |config|
    #   config.consumer_key        = ENV['TWITTER_KEY']
    #   config.consumer_secret     = ENV['TWITTER_SECRET']
    #   config.access_token        = ENV['MY_TWITTER_KEY']
    #   config.access_token_secret = ENV['MY_TWITTER_SECRET']
    # end
  end
end

require 'tumblr'
class TumblrsController < ApplicationController
  def index
    @tumblr = Tumblr::Client.load("factorymedia.tumblr.com")
    @posts = Tumblr::Post.perform(@tumblr.posts)
  end
end

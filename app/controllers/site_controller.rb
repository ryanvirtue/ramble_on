class SiteController < ApplicationController
  def index
    @post = Post.where(publish: true).last
  end
end

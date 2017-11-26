class SiteController < ApplicationController
  def index
    @posts = Post.where(publish: true).sort_by { |post| post.created_at  }.reverse
  end
end

class SiteController < ApplicationController
  def index
    @posts = Post.where(publish: true).sort_by { |post| post.published_at  }.reverse
  end
end

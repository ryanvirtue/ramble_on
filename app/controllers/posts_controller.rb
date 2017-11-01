class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    post = Post.new(post_params)
    if post.save!
      redirect_to dashboard_path
    end
  end

  def destroy
    # TODO
  end

  def edit
  end

  def update
    # TODO
  end

  private

  def post_params
    params.require(:post).permit(:title, :subtitle, :content)
  end

end

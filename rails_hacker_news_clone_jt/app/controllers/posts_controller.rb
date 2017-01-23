class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new(post_params)
  end

  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end



  private

    def post_params
      params.require(:post).permit(:title, :description)
    end
end

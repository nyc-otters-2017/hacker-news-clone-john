class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.new(params[:post])
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end



  # private
  #
  #   def post_params
  #     debugger
  #     params.require(:post).permit(:title, :description)
  #   end
end

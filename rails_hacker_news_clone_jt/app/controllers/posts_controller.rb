class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    if !logged_in?
      flash.now[:danger] = "You must be logged in to create post."
      render 'new'
    else
      @post = current_user.posts.new(post_params)
      if @post.save
        redirect_to @post
      else
        render 'new'
      end
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  private

    def post_params
      params.require(:post).permit(:title, :description)
    end
end

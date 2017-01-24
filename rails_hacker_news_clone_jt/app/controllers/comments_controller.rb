class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:id])
    @comment = current_user.@post.comments.new(comment_params)
    if @comment.save?
      redirect_to @post
    # else
    #   render 'new'
    # end
  end

  private

    def comment_params
      params.require(:comment).permit(:comment)
    end
end

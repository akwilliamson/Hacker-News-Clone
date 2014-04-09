class CommentsController < ApplicationController


  def index
    @comments = Comment.all
    @posts = Post.all
  end

  def create
    @comment = Comment.new(comment_params)
    @post = @comment.post
    if @comment.save
      flash[:notice] = "Comment saved"
      redirect_to posts_path
    else
      render "posts/#{@post.id}.html.erb"
    end
  end

  def show
    @comment = Comment.find(params[:id])
    @new_comment = Comment.new
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :commentable_id, :commentable_type)
  end

end

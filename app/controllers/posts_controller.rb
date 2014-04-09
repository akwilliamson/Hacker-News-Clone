class PostsController < ApplicationController

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to posts_path
  end

  def index
    @comments = Comment.all
    @posts = Post.order(total_score: :desc)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    if @post.save
      flash[:notice] = 'Saved'
      redirect_to('/')
    else
      render 'index'
    end
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new(:commentable_id => @post.id, :commentable_type => "Post")
  end

  private
  def post_params
    params.require(:post).permit(:description, :link, :time, :total_score)
  end


end

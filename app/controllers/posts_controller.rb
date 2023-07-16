class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to new_post_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @posts = Post.all
    render :index
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :user_id)
  end
end

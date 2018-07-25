class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit]


  def show
  end

  def index
    @posts = Post.all
  end

  private
  def post_params
    params.require(:post).include(:title, :content)
  end

  def set_post
    @post = Post.find_by(id: params[:id])
  end
end

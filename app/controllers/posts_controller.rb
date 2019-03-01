class PostsController < ApplicationController
  def new
    @post = Post.new
    if current_user != User.first
      redirect_to root_path
    end
  end

  def create
    if current_user != User.first
      redirect_to root_path
    end
    @post = Post.new(post_params)
    @post.save!
    redirect_to root_path
  end

  def edit
    if current_user != User.first
      redirect_to root_path
    end
    @post = Post.find(params[:id])
  end

  def update
    if current_user != User.first
      redirect_to root_path
    end
    @post = Post.find(params[:id])
    @post.update_attributes(post_params)
    redirect_to root_path
  end

  def delete

  end

  private
    def post_params
      params.require(:post).permit(:published, :name, :fone, :ftwo, :fthree, :ffour, :ffive, :image, :trelloURL, :siteURL)
    end
end

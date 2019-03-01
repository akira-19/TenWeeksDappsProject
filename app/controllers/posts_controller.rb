class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save!
    redirect_to root_path
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @user.update_attributes(post_params)
    redirect_to root_path
  end

  def delete
    Post.find(params[:id]).destroy
    redirect_to root_path
  end

  private
    def post_params
      params.require(:post).permit(:published, :name, :fone, :ftwo, :fthree, :ffour, :ffive, :image, :trelloURL)
    end
end

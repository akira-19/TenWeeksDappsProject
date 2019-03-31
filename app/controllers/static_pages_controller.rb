class StaticPagesController < ApplicationController
  def home
    @posts = Post.all.order(published: "DESC")
  end
end

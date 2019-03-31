class StaticPagesController < ApplicationController
  def home
    @posts = Post.all.order(id: "DESC")
  end
end

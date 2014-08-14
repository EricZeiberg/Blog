class CategoryController < ApplicationController

  def index
  @posts = Post.where(:category => params[:id]).order_by(:date.desc)
  end
end

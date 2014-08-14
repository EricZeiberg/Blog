class CategoryController < ApplicationController

  def index
  @posts = Post.where(:category => params[:id]).order_by(:date.desc)
  @category = Category.where(:id => params[:id]).first
  end

  def new
  	@category = Category.new
  end


  def create
  	if @category = Category.create(:name => params[:category][:name], 
  		:description => params[:category][:description], :order => params[:category][:order])
  		redirect_to '/blog'
  	else

  	end	
  end
end

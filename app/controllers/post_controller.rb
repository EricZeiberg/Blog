class PostController < ApplicationController
  before_filter :authenticate_user!, :except => [:index]
  def index
    id = params[:id]
    @post = Post.where(:id => id).first
  end
  def new
    @post = Post.new
  end

  def create
    if @post = Post.create(:name => params[:post][:name],:description => params[:post][:description], :contents => params[:post][:contents], :date => Time.now(), :user => current_user)
      redirect_to '/blog'
    else

    end
  end
end

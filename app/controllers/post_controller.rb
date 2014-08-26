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
    if @post = Post.create(:name => params[:post][:name],:description => params[:post][:description], :contents => params[:post][:contents],
      :date => Time.now(), :user => current_user, :category => Category.where(:name => params[:post][:category]).first)
      redirect_to '/blog'
    else

    end
  end

  def edit
    @post = Post.where(:id => params[:id]).first
    if @post.user.email != current_user.email
      flash[:alert] = "You are not authorized to edit this post!"
      redirect_to '/blog/'
    end
  end


  def update
    post = Post.where(:id => params[:id]).first
    post.update_attributes(:name => params[:post][:name],:description => params[:post][:description], :contents => params[:post][:contents],
      :date => Time.now(), :user => current_user, :category => Category.where(:name => params[:post][:category]).first)
    redirect_to '/post/' + post.id
  end
end

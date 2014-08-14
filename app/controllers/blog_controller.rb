class BlogController < ApplicationController

def index
  @posts = Post.all.order_by(:date.desc)
  @categories = Category.all.order_by(:order.asc)
end

end

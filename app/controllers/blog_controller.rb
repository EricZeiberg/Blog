class BlogController < ApplicationController

def index
  @posts = Post.all.order_by(:date.desc)
end

end

class BlogsController < ApplicationController
  def show
    @blog = Blog.find(params[:id])
  end

  def index
    @blogs = Blog.all  #全記事取得
  end

  def new
    @blog = Blog.new
  end

  def create
    blog = Blog.new(blog_params)
    blog.save
    redirect_to blogs_path
  end

  def edit
  end

  def update
  end

# 以下プライベートアクション
  private
  def blog_params
    params.require(:blog).permit(:title, :category, :body)
  end
end







































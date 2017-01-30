class Admin::Blog::PostsController < ApplicationController

  def index
    @posts = ::Blog::Post.all
  end

  def new
    @post = ::Blog::Post.new
  end

  def create
    @post = ::Blog::Post.new post_params

    if @post.save
      redirect_to admin_blog_posts_path, notice: t('.created')
    else
      render :new
    end
  end

  def edit
    @post = ::Blog::Post.find params[:id]
  end

  def update
    @post = ::Blog::Post.find params[:id]

    if @post.update_attributes post_params
      redirect_to admin_blog_posts_path, notice: t('.updated')
    else
      render :edit
    end
  end

  def destroy
    @post = ::Blog::Post.find params[:id]

    if @post.destroy
      redirect_to admin_blog_posts_path, notice: t('.destroyed')
    else
      redirect_to admin_blog_posts_path, errors: t('.not_destroyed')
    end
  end

  private

  def post_params
    params.require(:blog_post).permit(:title, :post, :subtitle, :description,
      :author)
  end
end

class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    @disable_pagination = true
  end

  def show
    @category = Category.find(params[:id])
    @title = @category.name
    @posts = @category.posts
    @disable_pagination = true
  end
end

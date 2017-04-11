class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :all_categories
  helper_method :all_posts
  helper_method :all_trendingPosts
  helper_method :all_trendingCategories
  before_filter :site_search

  def all_categories
    @categories = Category.all
  end

  def all_posts
    @posts = Post.all
  end

  def all_trendingPosts
    @posts = Post.order("created_at desc").limit(4)
  end

  def all_trendingCategories
    @categories = Category.order("created_at desc").limit(4)
  end

  def site_search
    @search = Post.search(params[:q])
	  @search_posts = @search.result
  end
end

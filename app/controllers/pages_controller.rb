class PagesController < ApplicationController
  def about
    @disable_pagination = true
  end

  def contact
    @disable_pagination = true
  end

  def resources
    @disable_pagination = true
  end
end

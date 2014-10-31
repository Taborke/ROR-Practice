class WelcomeController < ApplicationController
  def index
    @latest_posts = Entry.all.reverse_order.paginate(:page => params[:page])
    @time_now = Time.now
  end

  def taggings
    @tags = ActsAsTaggableOn::Tag.all
  end
end

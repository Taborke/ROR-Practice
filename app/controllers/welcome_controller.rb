class WelcomeController < ApplicationController
  def index
    @latest_posts = Entry.all.reverse_order
    @time_now = Time.now

  end
end

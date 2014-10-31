class WelcomeController < ApplicationController
  def index
    @latest_posts = Entry.all
    @time_now = Time.now

  end
end

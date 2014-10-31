class WelcomeController < ApplicationController
  def index
    @latest_posts = Entry.all
  end
end

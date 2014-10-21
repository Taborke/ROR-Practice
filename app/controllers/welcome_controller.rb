class WelcomeController < ApplicationController
  def index
  	@entries = Entry.all

  	@blogger = current_blogger.name.to_s if blogger_signed_in? else "Guest"
  end
end

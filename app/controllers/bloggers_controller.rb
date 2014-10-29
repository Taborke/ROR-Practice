class BloggersController < ApplicationController
  def index
  @bloggers = Blogger.all

  end

  def show
      @blogger = Blogger.find_by(id: params[:id])
  end
end

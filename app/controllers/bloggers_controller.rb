class BloggersController < ApplicationController
  def index
  @bloggers = Blogger.all

  end

  def show
    if params[:blogger_id]
      @blogger = Blogger.where(id: params[:id])
    else
      @blogger = Blogger.where(id: params[:id])
    end

  end
end

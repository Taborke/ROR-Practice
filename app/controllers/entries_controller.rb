class EntriesController < ApplicationController
  before_action :set_entry, only: [:show, :edit, :update, :destroy]
  before_action :set_blogger, except: [:index, :show]
  respond_to :html, :xml, :json

  def index
    if params[:user_id]
      @entries = Entry.where(user_id: params[:user_id])
    else
      @entries = Entry.all
    end
    respond_with(@entries)
  end

  def show
    respond_with(@entry)
  end

  def new
    @entry = Entry.new
    respond_with(@entry)
  end

  def edit
  end

  def create
    @entry = Entry.new(entry_params)
    @entry.save
    respond_with(@entry)
  end

  def update
    @entry.update(entry_params)
    respond_with(@entry)
  end

  def destroy
    @entry.destroy
    respond_with(@entry)
  end

  private
    def set_entry
      @entry = Entry.find(params[:id])
    end

    def set_blogger
      @blogger = current_user
    end

    def entry_params
      params.require(:entry).permit(:feeling, :blurb, :tag_list, :user_id)
    end
end

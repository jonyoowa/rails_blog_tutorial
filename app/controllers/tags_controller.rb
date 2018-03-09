class TagsController < ApplicationController
  before_action :require_login, only: [:destroy] 

  def show
    @tag = Tag.find(params[:id])
  end

  def index
  	@tag = Tag.all
  end

  def destroy
  	@tag = tag.destroy(params[:id])
  	flash.notice = "Tag '#{@tag.name}' Destroyed!"
  	redirect_to tags_path
  end
end

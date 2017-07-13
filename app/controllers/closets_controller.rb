class ClosetsController < ApplicationController
  def index
    @closets = Closet.all
  end

  def show
    @closet = Closet.find(params[:id])
    @visible_skeletons = @closet.skeletons.where(hide: false)
    @hidden_skeletons = @closet.skeletons.where(hide: true)
  end
end

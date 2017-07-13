class ClosetsController < ApplicationController
  def index
    @closets = Closet.all
  end

  def show
    @closet = Closet.find(params[:id])
  end
end

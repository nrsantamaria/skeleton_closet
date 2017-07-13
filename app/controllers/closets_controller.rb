class ClosetsController < ApplicationController
  def index
    @closet = Closet.where.not(name: '')
  end

  def show
    @closet = Closet.find(params[:id])
    @visible_skeletons = @closet.skeletons.where(hide: false)
    @hidden_skeletons = @closet.skeletons.where(hide: true)
  end

  def new
    @closet = Closet.new
  end

  def create
    @closet = Closet.new(closet_params)
    if @closet.save!
      respond_to do |format|
        format.html { redirect_to closets_url }
        format.js
      end
    else
      render :new
    end
  end

  private
  def closet_params
    params.require(:closet).permit(:name)
  end
end

class ClosetsController < ApplicationController
  def index
    @closets = Closet.all
  end

  def show
    @closet = Closet.find(params[:id])
    @visible_skeletons = @closet.skeletons.where(hide: false)
    @hidden_skeletons = @closet.skeletons.where(hide: true)
  end

  # def update
  #   @closet = Closet.find(params[:closet_id])
  #   @skeleton = Skeleton.find(params[:id])
  #   if @closet.update(skeleton_params)
  #     redirect_to closet_path(@skeleton.closet)
  #   else
  #     render :edit
  #   end
  # end
end

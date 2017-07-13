class SkeletonsController < ApplicationController

  # def show
  #   @closet = Closet.find(params[:closet_id])
  #   @skeleton = Skeleton.find(params[:id])
  # end

  def new
    @closet = Closet.find(params[:closet_id])
    @skeleton = @closet.skeletons.new
  end

  def create
    @closet = Closet.find(params[:closet_id])
    @skeleton = @closet.skeleton.new(skeleton_params)
    if @skeleton.save
      redirect_to closet_path(@skeleton.closet)
    else
      render :new
    end
  end

  def edit
    @closet = Closet.find(params[:closet_id])
    @skeleton = Skeleton.find(params[:id])
  end

  def update
    @closet = Closet.find(params[:closet_id])
    @skeleton = Skeleton.find(params[:id])
    if @skeleton.update(skeleton_params)
      redirect_to closet_path(@skeleton.closet)
    else
      render :edit
    end
  end

  def destroy
    @skeleton = Skeleton.find(params[:id])
    @skeleton.destroy
    redirect_to closet_path(@skeleton.closet)
  end

  private
  def skeleton_params
    params.require(:skeleton).permit(:name, :body, :hide, :picture   )
  end

end

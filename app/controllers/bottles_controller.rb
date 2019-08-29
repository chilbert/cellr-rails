class BottlesController < ApplicationController

  def index
      @bottles = Bottle.all
  end

  def new
    @bottle = Bottle.new
    @wineries = Winery.all
  end

  def create
    @bottle = Bottle.new(bottle_params)
    if @bottle.save
      flash[:success] = "Bottle added to Cellr successfully"
      redirect_to @bottle
    else
      render 'new'
    end
  end

  def update
    if @bottle.update_attributes(bottle_params)
      flash[:success] = "Bottle updated"
      redirect_to bottle_path(@bottle)
    else
      render 'edit'
    end
  end

  def edit
    @bottle = Bottle.find(params[:id])
  end

  private

  def bottle_params
    params.require(:bottle).permit(:title, :type, :grape_variety, :vintage, :winery_id, :price)
  end

end

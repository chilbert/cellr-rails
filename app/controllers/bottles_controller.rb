class BottlesController < ApplicationController

  def index
      @bottles = Bottle.all
  end

  def new
    @bottle = Bottle.new
  end

  def create
    @bottle = Bottle.new(bottle_params)
    if @bottle.save
      flash[:success] = "Bottle added to Cellr successfully"
      redirect_to user_path(current_user.id)
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
    params.require(:bottle).permit(:title, :wine_type, :grape_variety, :vintage, :winery_id, :price)
  end

end

class BottlesController < ApplicationController

  def index
      @bottles = Bottle.all
  end

  def new
    @bottle = Bottle.new
  end

  def show
    @bottle = Bottle.find_by(params[:id])
    @comment = Comment.new(bottle_id: params[:id])
  end

  def create
    @bottle = Bottle.new(bottle_params)
    if @bottle.save
      flash[:success] = "Bottle added to Cellr successfully"
      redirect_to user_bottles_path(current_user.id)
    else
      render 'new'
    end
  end

  def edit
    @bottle = Bottle.find(params[:id])
  end

  def update
    @bottle = Bottle.find(params[:id])
    if @bottle.update(bottle_params)
      flash[:success] = "Bottle updated successfully"
      redirect_to user_bottles_path(current_user.id)
    else
      render :edit
    end
  end



  private

  def bottle_params
    params.require(:bottle).permit(:title, :wine_type, :grape_variety, :vintage, :winery_id, :price)
  end

end

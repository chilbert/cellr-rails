class BottlesController < ApplicationController

  def new
    @bottle = Bottle.new
  end

  def create
    @bottle = Bottle.new(bottle_params)
  end

  def update
    if @bottle.update_attributes(bottle_params)
      flash[:success] = "Bottle updated"
      redirect_to @bottle
    else
      render 'edit'
    end
  end

  def edit
    @bottle = Bottle.find(params[:id])
  end

  private

  def bottle_params
    params.require(:bottle).permit(:title, :type, :grape_variety, :vintage)
  end

end

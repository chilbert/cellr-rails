class BottlesController < ApplicationController
  before_action :logged_in_user


  def index
    if params[:user_id]
      @bottles = User.find(params[:user_id]).bottles
      render "userindex"
    else
      @bottles = Bottle.all
    end
  end

  def new
    @bottle = Bottle.new
  end

  def show
    @bottle = Bottle.find(params[:id])
  end

  def create
    @bottle = Bottle.find_or_create_by(bottle_params)
    @bottle.bottle_prices.build
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
      redirect_to @bottle
    else
      render :edit
    end
  end



  private


  def bottle_params
    params.require(:bottle).permit(:title, :wine_type, :grape_variety, :vintage, :winery_id)
  end

end

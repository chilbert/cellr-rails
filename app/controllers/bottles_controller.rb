class BottlesController < ApplicationController
  before_action :logged_in_user
  before_action :set_bottle, only: [:show, :edit, :update]

  def index
    @user = User.find(session[:user_id])
    @bottles = Bottle.all
  end

  def new
    @bottle = Bottle.new
  end

  def show

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

  def set_bottle
    @bottle = Bottle.find(params[:id])
  end

  def bottle_params
    params.require(:bottle).permit(:title, :wine_type, :grape_variety, :vintage, :winery_id)
  end

end

class BottlesController < ApplicationController
  before_action :logged_in_user


  def index
    if params[:user_id]
      @bottle_price = BottlePrice.where(user_id: params[:user_id])
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
      respond_to do |format|
        format.html { render :show }
        format.json { render json: @bottle }
      end
    end

  def create
    @bottle = Bottle.find_or_create_by(bottle_params)
    if @bottle.save
      flash[:success] = "Bottle added to Cellr successfully"
      redirect_to new_user_bottle_bottle_price_path(current_user.id, @bottle.id)
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

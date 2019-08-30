class BottlePricesController < ApplicationController
  before_action :logged_in_user


  def new
      @user = User.find_by(id: params[:user_id])
      @bottle = Bottle.find_by(id: params[:bottle_id])
      @bottle_price = BottlePrice.new
      @bottle.bottle_prices.build()
  end

  def create
    @bottle_price = BottlePrice.create(price_params)
    flash[:success] = "Nice buy!"
    redirect_to user_bottles_path
  end

  private


  def price_params
    params.require(:bottle_price).permit(:price, :user_id, :bottle_id)
  end
end

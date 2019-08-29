class WineriesController < ApplicationController

  def index
    @wineries = Winery.all
  end

  def new
    @winery =  Winery.new
  end

  def create
    @winery = Winery.new(winery_params)
  end

  def edit
  end

  def show

  end

  def update
  end

  def delete
  end

  private
  def winery_params
    params.require(:winery).permit(:name)
  end
end

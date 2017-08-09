class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]


def index

    @restaurant = Restaurant.all
  end

  def show

    @restaurant = Restaurant.find(params[:id])
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end


  def update
   if @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  else
    render :edit
  end
end


  def destroy
     @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurant_path
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end







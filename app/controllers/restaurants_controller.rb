class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurants.all
  end

  def show
    @restaurant = Restaurants.find(params[:id])
  end

  def new
    @restaurant = Restaurants.new
  end

  def edit

  end

  def create
    @restaurant = Restaurant.new(params[:restaurant])
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  def update

  end

  def destroy

  end
end

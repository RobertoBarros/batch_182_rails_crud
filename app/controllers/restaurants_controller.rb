class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  # localhost:3000/restaurants
  def index
    @restaurants = Restaurant.all
  end

  # localhost:3000/restaurants/4
  def show
  end

  # localhost:3000/restaurants/new
  def new
    @restaurant = Restaurant.new
  end

  # localhost:3000/restaurants (post)
  def create
    restaurant = Restaurant.new(restaurant_params)
    restaurant.save
    redirect_to restaurant_path(restaurant)
  end

  # localhost:3000/restaurants/4/edit
  def edit
  end

  # localhost:3000/restaurants/4 (patch)
  def update
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  # localhost:3000/restaurants/4 (delete)
  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address)
  end


  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end


end

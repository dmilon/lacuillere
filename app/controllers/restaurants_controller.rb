class RestaurantsController < ApplicationController
  RESTAURANTS = {
    1 => { name: "Dishoom", address: "Shoreditch, London", category: "indian" },
    2 => { name: "Sushi Samba", address: "City, London", category: "japanese" }
  }

  def index
    food_type = params[:food_type]
    if food_type.blank?
      @restaurants = RESTAURANTS
    else
      @restaurants = RESTAURANTS.select do |_id, restaurant|
        restaurant[:category] == food_type
      end
    end
  end

  def create
    # raise
  end

  def show
    raise
  end
end

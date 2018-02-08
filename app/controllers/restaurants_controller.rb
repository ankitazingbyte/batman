class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :update, :destroy]
 
  # GET /restaurants
  # GET /restaurants.json
  def index
    @restaurants = Restaurant.all
    render json: @restaurants, include: ['categories','category.subcategories']
  end

  def default_serializer_options
  {root: false}
  end

  # GET /restaurants/1
  # GET /restaurants/1.json
  def show
    render json: @restaurant, root: false 
  end

  # POST /restaurants
  # POST /restaurants.json
  def create
    @restaurant = Restaurant.new(restaurant_params)
   
      if @restaurant.save
        render :show, status: :created, location: @restaurant
      else
        render json: @restaurant.errors, status: :unprocessable_entity
      end
   
  end

  # PATCH/PUT /restaurants/1
  # PATCH/PUT /restaurants/1.json
  def update
    
      if @restaurant.update(restaurant_params)
        render :show, status: :ok, location: @restaurant
      else
        render json: @restaurant.errors, status: :unprocessable_entity
      end
  
  end

  # DELETE /restaurants/1
  # DELETE /restaurants/1.json
  def destroy
    @restaurant.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurant_params
      params.require(:restaurant).permit(:user_id, :name, :address, :phone, :category_id)
    end
end

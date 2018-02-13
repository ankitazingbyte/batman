class DeliveryBoysController < ApplicationController
  before_action :set_delivery_boy, only: [:show, :update, :destroy]

  # GET /delivery_boys
  def index
    @delivery_boys = DeliveryBoy.all

    render json: @delivery_boys
  end

  # GET /delivery_boys/1
  def show
    render json: @delivery_boy
  end

  # POST /delivery_boys
  def create
    @delivery_boy = DeliveryBoy.new(delivery_boy_params)

    if @delivery_boy.save
      render json: @delivery_boy, status: :created, location: @delivery_boy
    else
      render json: @delivery_boy.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /delivery_boys/1
  def update
    if @delivery_boy.update(delivery_boy_params)
      render json: @delivery_boy
    else
      render json: @delivery_boy.errors, status: :unprocessable_entity
    end
  end

  # DELETE /delivery_boys/1
  def destroy
    @delivery_boy.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_delivery_boy
      @delivery_boy = DeliveryBoy.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def delivery_boy_params
      params.require(:delivery_boy).permit(:name, :address, :image, :total_delivery, :rating_id)
    end
end

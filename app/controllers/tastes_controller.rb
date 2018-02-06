class TastesController < ApplicationController
  before_action :set_taste, only: [:show, :update, :destroy]

  # GET /tastes
  def index
    @tastes = Taste.all

    render json: @tastes
  end

  # GET /tastes/1
  def show
    render json: @taste
  end

  # POST /tastes
  def create
    @taste = Taste.new(taste_params)

    if @taste.save
      render json: @taste, status: :created, location: @taste
    else
      render json: @taste.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tastes/1
  def update
    if @taste.update(taste_params)
      render json: @taste
    else
      render json: @taste.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tastes/1
  def destroy
    @taste.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taste
      @taste = Taste.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def taste_params
      params.require(:taste).permit(:name, :product_id)
    end
end

class FoodTypesController < ApplicationController
  before_action :set_food_type, only: %i[ show update destroy ]

  # GET /food_types
  # GET /food_types.json
  def index
    @food_types = FoodType.all
  end

  # GET /food_types/1
  # GET /food_types/1.json
  def show
  end

  # POST /food_types
  # POST /food_types.json
  def create
    @food_type = FoodType.new(food_type_params)

    if @food_type.save
      render :show, status: :created, location: @food_type
    else
      render json: @food_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /food_types/1
  # PATCH/PUT /food_types/1.json
  def update
    if @food_type.update(food_type_params)
      render :show, status: :ok, location: @food_type
    else
      render json: @food_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /food_types/1
  # DELETE /food_types/1.json
  def destroy
    @food_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food_type
      @food_type = FoodType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def food_type_params
      params.require(:food_type).permit(:name)
    end
end

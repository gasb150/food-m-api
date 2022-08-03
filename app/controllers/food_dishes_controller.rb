class FoodDishesController < ApplicationController
  before_action :set_food_dish, only: %i[ show update destroy ]

  # GET /food_dishes
  # GET /food_dishes.json
  def index
    @food_dishes = FoodDish.all
  end

  # GET /food_dishes/1
  # GET /food_dishes/1.json
  def show
  end

  # POST /food_dishes
  # POST /food_dishes.json
  def create
    @food_dish = FoodDish.new(food_dish_params)

    if @food_dish.save
      render :show, status: :created, location: @food_dish
    else
      render json: @food_dish.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /food_dishes/1
  # PATCH/PUT /food_dishes/1.json
  def update
    if @food_dish.update(food_dish_params)
      render :show, status: :ok, location: @food_dish
    else
      render json: @food_dish.errors, status: :unprocessable_entity
    end
  end

  # DELETE /food_dishes/1
  # DELETE /food_dishes/1.json
  def destroy
    @food_dish.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food_dish
      @food_dish = FoodDish.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def food_dish_params
      params.require(:food_dish).permit(:name, :cost, :ingredients, :food_type_id)
    end
end

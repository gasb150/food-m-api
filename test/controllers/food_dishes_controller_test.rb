require "test_helper"

class FoodDishesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @food_dish = food_dishes(:one)
  end

  test "should get index" do
    get food_dishes_url, as: :json
    assert_response :success
  end

  test "should create food_dish" do
    assert_difference("FoodDish.count") do
      post food_dishes_url, params: { food_dish: { cost: @food_dish.cost, food_type_id: @food_dish.food_type_id, ingredients: @food_dish.ingredients, name: @food_dish.name } }, as: :json
    end

    assert_response :created
  end

  test "should show food_dish" do
    get food_dish_url(@food_dish), as: :json
    assert_response :success
  end

  test "should update food_dish" do
    patch food_dish_url(@food_dish), params: { food_dish: { cost: @food_dish.cost, food_type_id: @food_dish.food_type_id, ingredients: @food_dish.ingredients, name: @food_dish.name } }, as: :json
    assert_response :success
  end

  test "should destroy food_dish" do
    assert_difference("FoodDish.count", -1) do
      delete food_dish_url(@food_dish), as: :json
    end

    assert_response :no_content
  end
end

json.extract! food_dish, :id, :name, :cost, :ingredients, :food_type_id, :created_at, :updated_at
json.url food_dish_url(food_dish, format: :json)

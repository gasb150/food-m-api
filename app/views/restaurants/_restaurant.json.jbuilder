json.extract! restaurant, :id, :menu, :owner, :name, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)

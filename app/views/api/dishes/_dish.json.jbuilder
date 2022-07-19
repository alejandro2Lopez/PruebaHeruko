json.extract! dish, :id,:name, :description, :cost, :image, :created_at, :updated_at
json.url dish_url(dish, format: :json)
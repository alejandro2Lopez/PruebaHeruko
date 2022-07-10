json.extract! client, :id, :name, :last_name, :password, :email, :adress, :created_at, :updated_at
json.url client_url(client, format: :json)

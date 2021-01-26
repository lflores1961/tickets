json.extract! client, :id, :name, :address, :phone, :rfc, :created_at, :updated_at
json.url client_url(client, format: :json)

json.extract! user, :id, :name, :email, :password_digest, :access_level, :created_at, :updated_at
json.url user_url(user, format: :json)

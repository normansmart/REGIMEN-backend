json.extract! user, :id, :username, :password_digest, :first_name, :last_name, :created_at, :updated_at
json.url user_url(user, format: :json)

json.extract! user, :id, :name, :class, :grade, :created_at, :updated_at
json.url user_url(user, format: :json)

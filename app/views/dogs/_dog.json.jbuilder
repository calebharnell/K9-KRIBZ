json.extract! dog, :id, :user_id, :name, :age, :breed, :created_at, :updated_at
json.url dog_url(dog, format: :json)

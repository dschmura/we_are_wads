json.extract! hobby, :id, :title, :content, :user_id, :created_at, :updated_at
json.url hobby_url(hobby, format: :json)
json.content hobby.content.to_s

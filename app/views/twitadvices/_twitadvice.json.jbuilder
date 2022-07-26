json.extract! twitadvice, :id, :advice, :user_id, :created_at, :updated_at
json.url twitadvice_url(twitadvice, format: :json)

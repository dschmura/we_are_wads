json.extract! quirk, :id, :title, :content, :user_id, :created_at, :updated_at
json.url quirk_url(quirk, format: :json)
json.content quirk.content.to_s

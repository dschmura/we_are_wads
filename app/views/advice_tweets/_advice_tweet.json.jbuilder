json.extract! advice_tweet, :id, :title, :content, :created_at, :updated_at
json.url advice_tweet_url(advice_tweet, format: :json)
json.content advice_tweet.content.to_s

json.extract! term_popularity, :id, :keyword, :tweet_count, :coordinates, :created_at, :updated_at
json.url term_popularity_url(term_popularity, format: :json)

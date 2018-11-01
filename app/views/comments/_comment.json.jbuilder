json.extract! comment, :id, :content, :anonymous_commentor, :created_at, :updated_at
json.url comment_url(comment, format: :json)

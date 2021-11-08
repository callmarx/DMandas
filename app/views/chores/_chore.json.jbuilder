json.extract! chore, :id, :title, :content, :user_id, :created_at, :updated_at
json.url chore_url(chore, format: :json)
json.content chore.content.to_s

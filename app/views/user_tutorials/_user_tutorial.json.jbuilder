json.extract! user_tutorial, :id, :name, :goal, :content, :code, :files, :images, :embed, :created_at, :updated_at
json.url user_tutorial_url(user_tutorial, format: :json)

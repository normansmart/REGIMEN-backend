json.extract! commit, :id, :user_id, :project_id, :title, :commit, :created_at, :updated_at
json.url commit_url(commit, format: :json)

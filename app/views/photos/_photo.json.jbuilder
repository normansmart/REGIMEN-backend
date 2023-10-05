json.extract! photo, :id, :user_id, :cohort_id, :image, :created_at, :updated_at
json.url photo_url(photo, format: :json)

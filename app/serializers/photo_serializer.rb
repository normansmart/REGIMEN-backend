class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :cohort_id, :image
end

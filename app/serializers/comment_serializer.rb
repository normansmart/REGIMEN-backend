class CommentSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :commit_id, :comment
end

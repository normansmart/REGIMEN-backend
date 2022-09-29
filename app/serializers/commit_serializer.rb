class CommitSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :project_id, :title, :commit , :language
end

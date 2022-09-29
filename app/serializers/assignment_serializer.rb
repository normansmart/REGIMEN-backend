class AssignmentSerializer < ActiveModel::Serializer
  attributes :id, :cohort_id, :project_id, :user_id
end

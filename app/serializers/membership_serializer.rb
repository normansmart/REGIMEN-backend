class MembershipSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :cohort_id
end

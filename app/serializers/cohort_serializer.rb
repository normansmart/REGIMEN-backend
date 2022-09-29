class CohortSerializer < ActiveModel::Serializer
  attributes :id, :name, :tag, :message, :admin_id, :join_key, :private , :projects
 
end

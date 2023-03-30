class UserSerializer < ActiveModel::Serializer
# include JSONAPI::Serializer
  attributes :id, :username, :password_digest, :first_name, :last_name , :onboarded , :attachment_url , :setting , :cohorts , :projects , :commits , :comments , :friends
  has_many :projects
  has_many :commits , through: :projects
  has_one :setting


end

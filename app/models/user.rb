class User < ApplicationRecord

    has_secure_password

    has_many :memberships
    has_many :cohorts , through: :memberships
    has_many :assignments
    has_many :projects , through: :assignments

    has_many :commits 
    has_many :comments , through: :commits

    has_many :friends

    has_one :setting
end

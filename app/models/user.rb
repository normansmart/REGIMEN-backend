class User < ApplicationRecord

    has_secure_password

    has_one_attached :attachment
    
    has_many :memberships
    has_many :cohorts , through: :memberships
    has_many :assignments
    has_many :projects , through: :assignments
    has_many :commits 
    has_many :comments , through: :commits
    has_many :friends
    has_one :setting

    validates :username, uniqueness: true

    def attachment_url
        Rails.application.routes.url_helpers.url_for(attachment) if attachment.attached?
      end
    
end

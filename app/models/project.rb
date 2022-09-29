class Project < ApplicationRecord

  
    has_one :assignment
    has_one :cohort , through: :assignment
    has_many :users , through: :assignment

    has_many :commits
    has_many :comments , through: :commits
end

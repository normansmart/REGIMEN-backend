class Assignment < ApplicationRecord
    belongs_to :user
    belongs_to :cohort
    belongs_to :project 
  
end

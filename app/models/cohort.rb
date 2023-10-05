class Cohort < ApplicationRecord
    has_many :photos
    has_many :memberships 
    has_many :users , through: :memberships 
    has_many :assignments 
    has_many :projects , through: :assignments 
    has_many :commits, through: :projects
    validates :name , presence: true
    validates :name, uniqueness: true
   
end

class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :front_lang, :back_lang, :key, :private , :cohort , :users , :commits
  
end

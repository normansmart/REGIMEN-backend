class SettingSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :backgroundcolor, :font, :color
end

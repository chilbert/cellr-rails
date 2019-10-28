class BottlesSerializer < ActiveModel::Serializer
  attributes :id, :title, :wine_type, :grape_variety, :vintage
  belongs_to :winery


end

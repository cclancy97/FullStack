class HeroSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :universe
end

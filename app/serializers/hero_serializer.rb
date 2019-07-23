class HeroSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :universe
  belongs_to :user

  def editable
    scope == object.user
  end

end

class TagSerializer < ActiveModel::Serializer
  attributes :name, :slug
  has_many :opportunities
  has_many :profiles
end

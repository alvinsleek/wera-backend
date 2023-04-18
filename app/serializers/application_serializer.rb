class ApplicationSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :opportunity
  belongs_to :profile
end

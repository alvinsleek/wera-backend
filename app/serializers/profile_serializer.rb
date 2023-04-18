class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :phone_number, :email_address

  has_many :tags
  belongs_to :user
  has_many :experiences
  has_many :educations
  has_many :applications
end

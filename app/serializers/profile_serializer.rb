class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :phone_number, :email_address, :created_at, :date_of_birth, :skills, :resume, :biography, :profile_picture
  has_many :tags
  belongs_to :user
  has_many :experiences
  has_many :educations
  has_many :applications
  has_many :opportunities, through: :tags

end

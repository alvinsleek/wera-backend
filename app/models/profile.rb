class Profile < ApplicationRecord
  has_many :experiences, dependent: :destroy
  has_many :educations, dependent: :destroy
  has_many :applications, dependent: :destroy
  has_many :profile_tags
  has_many :tags, through: :profile_tags
  belongs_to :user
  has_many :opportunities, through: :tags
end

class Tag < ApplicationRecord
  has_many :profile_tags
  has_many :profiles, through: :profile_tags
  has_many :opportunity_tags
  has_many :opportunities, through: :opportunity_tags
end

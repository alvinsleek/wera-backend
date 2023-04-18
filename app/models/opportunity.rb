class Opportunity < ApplicationRecord
  has_many :applications
  belongs_to :employer
  has_many  :opportunity_tags
  has_many :tags, through: :opportunity_tags

end

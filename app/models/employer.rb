class Employer < ApplicationRecord
  belongs_to :user
  has_many :opportunities, dependent: :destroy
  
end

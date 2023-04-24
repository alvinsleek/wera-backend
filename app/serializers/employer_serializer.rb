class EmployerSerializer < ActiveModel::Serializer
  attributes :id, :company_name, :company_location, :company_description, :company_logo, :email_address, :created_at 

  has_many :opportunities
  belongs_to :user
end

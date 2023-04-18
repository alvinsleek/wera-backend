class OpportunitySerializer < ActiveModel::Serializer
  attributes :title, :description, :cut_off, :job_type, :qualifications, :estimated_salary, :responsibilities, :application_deadline
   has_many :tags
   belongs_to :employer
   has_many :applications
end

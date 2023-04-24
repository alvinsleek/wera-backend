class OpportunitySerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :cut_off, :job_type, :qualifications, :estimated_salary, :responsibilities, :application_deadline, :description_summary, :created_at
   has_many :tags
   belongs_to :employer
   has_many :applications
   def description_summary
    "#{self.object.description[0..250]}..."
   end 
end

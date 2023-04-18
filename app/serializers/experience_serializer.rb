class ExperienceSerializer < ActiveModel::Serializer
  attributes :year, :company, :job_description
  belongs_to :profile
end

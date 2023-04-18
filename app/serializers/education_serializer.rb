class EducationSerializer < ActiveModel::Serializer
  attributes :year_of_admission, :year_of_completion, :institution, :qualification
  belongs_to :profile
end

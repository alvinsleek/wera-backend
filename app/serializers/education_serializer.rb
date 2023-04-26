class EducationSerializer < ActiveModel::Serializer
  attributes :id, :year_of_admission, :year_of_completion, :institution, :qualification
 
end

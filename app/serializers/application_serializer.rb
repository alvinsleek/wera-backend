class ApplicationSerializer < ActiveModel::Serializer
  attributes :id, :applicant, :title, :company_name, :created_at, :company_logo
  belongs_to :opportunity
  belongs_to :profile
  def title
    self.object.opportunity.title
  end
  def applicant
    self.object.profile.full_name
  end
  def company_name
    self.object.opportunity.employer.company_name
  end
  def company_logo
    self.object.opportunity.employer.company_logo
  end
  
end

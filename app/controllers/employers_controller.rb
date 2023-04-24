class EmployersController < ApplicationController
  skip_before_action :verify_authenticity_token
  rescue_from ActiveRecord::RecordInvalid, with: :invalid_employer_credentials
  rescue_from ActiveRecord::RecordNotFound, with: :employer_not_found
  # GET  /employers
  def index
    render json: Employer.all
    
  end
 # GET employers/:id
  def show
    employer= Employer.find(params[:id])
    render json: employer
  end
# PATCH /employers/:id
  def update
    employer=Employer.find(params[:id])
    employer.update!(employer_params)
    render json: employer
  end

  def employer_opportunities
    jobs = Opportunity.where(employer_id: params[:employer_id])
    render json: jobs, status: :ok
  end

  private

  def employer_params
    params.permit(:company_name, :company_location, :company_description, :company_logo, :email_address)
  end

  def invalid_employer_credentials(invalid)
      render json: {errors:invalid.record.errors.full_messages}, status: :unprocessable_entity #422
  end

  def employer_not_found
    render json: {errors:["Employer does not exist"]}, status: :not_found  #404
  end
end

class EducationsController < ApplicationController
  skip_before_action :verify_authenticity_token
  rescue_from ActiveRecord::RecordInvalid, with: :invalid_education_credentials
  rescue_from ActiveRecord::RecordNotFound, with: :education_not_found
  # GET /profiles/:profile_id/educations
  def index
    profile= Profile.find(params[:profile_id])
    educations=profile.educations
    render json: educations
  end
# POST /profiles/:profile_id/educations
  def create
  
    education=Education.create!(education_params)
    render json: education
  end
  # DELETE /educations/:id
  def destroy
    education= find_education
    education.destroy
    head :no_content
  end
  # PATCH /educations/:id
  def update
    education= find_education
    education.update!(education_params)
    render json: education
  end
  private
  def find_education
    Education.find(params[:id])
  end
    def education_params
        params.permit(:year_of_admission, :year_of_completion, :institution, :qualification, :profile_id)
    end
    def invalid_education_credentials(invalid)
      render json: {errors:invalid.record.errors.full_messages}, status: :unprocessable_entity #422
    end
   
    def education_not_found
      render json: {errors:["education does not exist"]}, status: :not_found  #404
    end
end

class EducationsController < ApplicationController
  skip_before_action :verify_authenticity_token
  rescue_from ActiveRecord::RecordInvalid, with: :invalid_education_credentials
  rescue_from ActiveRecord::RecordNotFound, with: :education_not_found

  def create
    profile= Profile.find(params[:profile_id])
    education=profile.education.create!(education_params)
    render json: profile
  end
  def destroy
    education= find_education
    education.destroy
    head :no_content
  end
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
        params.permit(:year_of_admission, :year_of_completion, :institution, :qualification)
    end
    def invalid_education_credentials(invalid)
      render json: {errors:invalid.record.errors.full_messages}, status: :unprocessable_entity #422
    end
   
    def education_not_found
      render json: {errors:["education does not exist"]}, status: :not_found  #404
    end
end

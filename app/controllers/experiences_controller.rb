class ExperiencesController < ApplicationController
  skip_before_action :verify_authenticity_token
  rescue_from ActiveRecord::RecordInvalid, with: :invalid_experience_credentials
  rescue_from ActiveRecord::RecordNotFound, with: :experience_not_found

   def create
    profile= Profile.find(params[:profile_id])
    experience=profile.experience.create!(experience_params)    
    render json: profile
  end
  def destroy
    experience= find_experience
    experience.destroy
    head :no_content
  end
  def update
    experience= find_experience
    experience.update!(experience_params)
    render json: experience
  end

  private

  def find_experience
    Experience.find(params[:id])
  end
  def experience_params
      params.permit(:year, :company, :job_description)
  end
  def invalid_experience_credentials(invalid)
    render json: {errors:invalid.record.errors.full_messages}, status: :unprocessable_entity #422
  end
  
  def experience_not_found
    render json: {errors:["Experience does not exist"]}, status: :not_found  #404
  end
end

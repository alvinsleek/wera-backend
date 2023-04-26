class ExperiencesController < ApplicationController
  skip_before_action :verify_authenticity_token
  rescue_from ActiveRecord::RecordInvalid, with: :invalid_experience_credentials
  rescue_from ActiveRecord::RecordNotFound, with: :experience_not_found
  # GET /profiles/:profile_id/experiences
  def index
    profile= Profile.find(params[:profile_id])
    experiences=profile.experiences
    render json: experiences
  end
# POST /profiles/:profile_id/experiences
   def create
  
    experience=Experience.create!(experience_params)    
    render json: experience
  end
  # DELETE /experiences/:id
  def destroy
    experience= find_experience
    experience.destroy
    head :no_content
  end
   # PATCH /experiences/:id
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
      params.permit(:year, :company, :job_description, :profile_id)
  end
  def invalid_experience_credentials(invalid)
    render json: {errors:invalid.record.errors.full_messages}, status: :unprocessable_entity #422
  end
  
  def experience_not_found
    render json: {errors:["Experience does not exist"]}, status: :not_found  #404
  end
end

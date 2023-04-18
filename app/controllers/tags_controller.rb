class TagsController < ApplicationController
  skip_before_action :verify_authenticity_token
  rescue_from ActiveRecord::RecordInvalid, with: :invalid_tag_credentials
  rescue_from ActiveRecord::RecordNotFound, with: :tag_not_found

  def index
    render json: Tag.all
  end

  def create
    if params[:profile_id]
      profile= Profile.find(params[:profile_id])
      tag= Tag.find_by(name:params[:name])
      profile.tags.push(tag)
      render json: profile
      else
        opportunity= Opportunity.find(params[:profile_id])
      tag= Tag.find_by(name:params[:name])
      opportunity.tags.push(tag)
      render json: opportunity
    end
  end

  def destroy
    if params[:profile_id]
      profile= Profile.find(params[:profile_id])
      profile.tags.delete_if{|tag| tag.name==params[:name]}
      render json: profile
    else
       opportunity= Opportunity.find(params[:profile_id])
      opportunity.tags.delete_if{|tag| tag.name==params[:name]}
      render json: opportunity
    end
  end

  private

  def find_tag
    Tag.find(params[:id])
  end
  def tag_params
      params.permit(:name, :slug)
  end

  def invalid_tag_credentials(invalid)
    render json: {errors:invalid.record.errors.full_messages}, status: :unprocessable_entity #422
  end

  def tag_not_found
    render json: {errors:["tag does not exist"]}, status: :not_found  #404
  end
end

class ApplicationsController < ApplicationController
  skip_before_action :verify_authenticity_token
  rescue_from ActiveRecord::RecordInvalid, with: :invalid_application_credentials

  # GET /application
    def index
      render json: Application.all
    end
    # GET applications/:id
  def show
    application= Application.find(params[:id])
    render json: application
  end
    # POST /applications
   def create
    application=Application.create!(application_params)
    render json: application
  end
  private
    def application_params
        params.permit(:opportunity_id, :profile_id)
    end
    def invalid_application_credentials(invalid)
      render json: {errors:invalid.record.errors.full_messages}, status: :unprocessable_entity #422
    end
end

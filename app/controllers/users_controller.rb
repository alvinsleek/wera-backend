class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token
    rescue_from ActiveRecord::RecordInvalid, with: :invalid_user_credentials
    rescue_from ActiveRecord::RecordNotFound, with: :user_not_found
    
    #signup
    def create
        user = User.create!(user_params)
        if user
            if (params[:user_type]=="employer")
            employer= Employer.create!(user_id:user.id, full_name:params[:full_name],email_address:params[:email_address] )
            render json: employer
            else
            profile= Profile.create!(user_id:user.id, full_name:params[:full_name],email_address:params[:email_address])
            render json: profile
            end
        end
    end

    private

    def user_params
        params.permit(:email_address, :password, :password_confirmation, :user_type, :is_admin)
    end

    def invalid_user_credentials(invalid)
      render json: {errors:invalid.record.errors.full_messages}, status: :unprocessable_entity #422
    end

    def user_not_found
      render json: {errors:["User does not exist"]}, status: :not_found  #404
    end
end

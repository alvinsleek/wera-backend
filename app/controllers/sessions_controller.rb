class SessionsController < ApplicationController
    skip_before_action :verify_authenticity_token
    rescue_from ActiveRecord::RecordInvalid, with: :invalid_user_credentials
    rescue_from ActiveRecord::RecordNotFound, with: :user_not_found
    def summaries
        render json: {opportunities:Opportunity.all.count, profiles:Profile.all.count, applications:Application.all.count, employers:Employer.all.count}
    end
    #login
    def create
        user= User.find_by(email_address:params[:email_address])
        if user&.authenticate(params[:password])
            if((params[:user_type]=="jobseeker"))
                profile= Profile.find_by(user_id:user.id)
                if profile
                     render json: profile
                else
                    render json: {errors:["A job seeker does not exist under this email"]}, status: :not_found
                end
            else
                if(user.is_admin==true)
                    render json: user
                else
                    employer= Employer.find_by(user_id:user.id)
                    if employer
                        render json: employer
                    else
                        render json: {errors:["Employer does not exist under this email"]}, status: :not_found
                    end
                end
            end

        else
            render json: {errors:["Wrong email address or password"]}, status: :unprocessable_entity #422
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

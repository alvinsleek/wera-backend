class OpportunitiesController < ApplicationController
  def index 
    render json: Opportunity.all
  end
end

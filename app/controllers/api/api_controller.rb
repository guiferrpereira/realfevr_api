module Api
  class ApiController < ApplicationController
    before_action :redirect_unauthorized!

    private

    def redirect_unauthorized!
      render json: { error: :unauthorized }, status: :unauthorized unless current_api_user
    end
  end
end

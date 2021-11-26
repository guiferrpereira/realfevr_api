# frozen_string_literal: true

# sessions class to return user session status
module Api
  module V1
    module Auth
      class SessionsController < ApplicationController
        def index
          if current_api_v1_user
            render json: { is_login: true, data: current_api_v1_user }
          else
            render json: { is_login: false, message: 'User not signed in.' }, status: :unauthorized
          end
        end
      end
    end
  end
end

# frozen_string_literal: true

# devise registrations code override
# rubocop:disable Rails/LexicallyScopedActionFilter
module Api
  module V1
    module Auth
      class RegistrationsController < DeviseTokenAuth::RegistrationsController
        before_action :configure_sign_up_params, only: [:create]

        private

        def configure_sign_up_params
          devise_parameter_sanitizer.permit(:registration, keys: [:name])
        end
      end
    end
  end
end
# rubocop:enable Rails/LexicallyScopedActionFilter

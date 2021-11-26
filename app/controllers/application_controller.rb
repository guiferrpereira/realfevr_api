class ApplicationController < ActionController::API
  include ActionController::RequestForgeryProtection
  include DeviseTokenAuth::Concerns::SetUserByToken

  protect_from_forgery prepend: true, if: proc { |c| c.request.format == 'application/json' }
end

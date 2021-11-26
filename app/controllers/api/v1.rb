module Api
  module V1
    INVALID_AUTH_TOKEN_MESSAGE    = 'Invalid auth_token'.freeze
    INVALID_APP_TOKEN_MESSAGE     = 'Invalid app_token'.freeze
    APPLICATION_REVOKED_MESSAGE   = 'This application is revoked'.freeze
    NOT_AUTHORIZED                = 'Unauthorized'.freeze
    INVALID_PARAMETERS            = 'Invalid parameters'.freeze
    INVALID_CREDENTIALS           = 'Invalid email and/or password'.freeze
    RECORD_NOT_FOUND              = 'Could not find record'.freeze
    DATE_RANGE_LIMITED            = 'Date range can not be more than %d days'.freeze
    DATE_RANGE_RETENTION          = 'Dates must not be before the retention limit date of %s'.freeze
    DATE_RANGE_NEGATIVE           = 'End date/time must be after start date/time'.freeze
    DATA_ACCESS_FORBIDDEN_MESSAGE = 'API access is only for organizations on an active plan'.freeze
    PLAN_LIMIT                    = 'Reached plan limit'.freeze

    MAX_DATE_RANGE = 31

    LIMIT = 500
  end
end

require 'httparty'
require 'sidekiq-scheduler'

class FetchPlayerInfoJob
  include Sidekiq::Worker

  def perform
    response = HTTParty.get("#{ENV['API_BASE_URI']}/data/players.json", headers: headers)
    # we will store the info in a RawData table, to process it later
    # here we should handle the failure and notify an admin
    # e.g rollbar or something similar
    return 'unable to process' unless response.code == 200

    result = JSON.parse(response.body, object_class: OpenStruct)

    TransformUtils.process(result.data)
  rescue JSON::ParserError
    # we should handle the failure (e.g rollbar)
    false
  end

  def headers
    {
      'Content-Type': 'application/json'
    }
  end
end

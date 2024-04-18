# frozen_string_literal: true

# Primary class for all class used in API V1
module V1
  class API < Grape::API
    desc 'API PL version 1'
    version 'v1' do
      mount V1::BandsAPI
      mount V1::CollectivesAPI
      mount V1::EventsAPI
    end
  end
end

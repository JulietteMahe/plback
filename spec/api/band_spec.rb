# frozen_string_literal: true

require 'rails_helper'

describe V1::BandsAPI, type: :request do
  context 'GET /v1/bands' do
    let(:schema) { :v1_bands_path }

    it 'returns an list of bands' do
      get '/v1/bands'
      expect(response.status).to eq(200)
      expect(response.body).to match_json_schema(schema)
    end
  end
end

=begin
describe Twitter::API do
  context 'GET /api/statuses/public_timeline' do
    it 'returns an empty array of statuses' do
      get '/api/statuses/public_timeline'
      expect(response.status).to eq(200)
      expect(JSON.parse(response.body)).to eq []
    end
  end
  context 'GET /api/statuses/:id' do
    it 'returns a status by id' do
      status = Status.create!
      get "/api/statuses/#{status.id}"
      expect(response.body).to eq status.to_json
    end
  end
end
=end

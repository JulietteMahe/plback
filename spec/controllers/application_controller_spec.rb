# frozen_string_literal: true

require 'rails_helper'

describe 'ApplicationController#index', type: :request do
  context 'GET /' do
    let(:schema) { :root_path }

    it 'return a simple JSON about API version and name application' do
      get root_path
      expect(response.status).to eq(200)
      expect(response.body).to match_json_schema(schema)
    end
  end
end

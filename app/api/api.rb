# frozen_string_literal: true

# Entrypoint for all class to API
class API < Grape::API
  format :json
  formatter :json, Grape::Formatter::ActiveModelSerializers
  error_formatter :json, Grape::Formatter::ActiveModelSerializers

  desc 'API version 1'
  version 'v1' do
    mount V1::API
  end
end

# frozen_string_literal: true

# Primary controller to application
class ApplicationController < ActionController::Base
  # Default root to application
  def index
    render json: {
      Environment: Rails.env,
      ApiVersion: 'v1'
    }
  end
end

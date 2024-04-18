# frozen_string_literal: true

module V1
  module Concerns
    module Default
      extend ActiveSupport::Concern

      included do
        version         'v1', using: :path
        format          :json
        default_format  :json
      end
    end
  end
end

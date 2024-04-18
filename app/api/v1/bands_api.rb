# frozen_string_literal: true

module V1
  class BandsAPI < Grape::API
    include V1::Concerns::Default

    resource :bands do
      desc 'List of bands'
      get each_serializer: BandSerializer do
        Band.all
      end

      desc 'Information about an band'
      params do
        requires :id, type: String, desc: 'Band ID'
      end
      route_param :id do
        get serializer: BandSerializer do
          Band.first
        end
      end

      desc 'Add a new band to plateform'
      params do
        requires :name, type: String
      end
      post do
        Band.new(params)
      end
    end
  end
end

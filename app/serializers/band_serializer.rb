# frozen_string_literal: true

class BandSerializer < Serializer
  attributes :name, :events

  def events
    to_array(EventSerializer, object.events)
  end

  def to_array(serializer, datas)
    out = []
    datas.map do |data|
      sz = ActiveModelSerializers::Adapter::Json.new(serializer.new(data))
      sz.serializer.to_hash.each_value { |value| out.push(value) }
    end
    out
  end
end

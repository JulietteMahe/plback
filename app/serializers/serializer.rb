# frozen_string_literal: true

# Primary class of all serializer
class Serializer < ActiveModel::Serializer
  def attributes(attrs, option)
    hash = super
    hash.delete_if { |_key, value| value.nil? }
    hash
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

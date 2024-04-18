# frozen_string_literal: true

# Event
#
# Event by a band/artist
class Event
  include Mongoid::Document
  include Mongoid::Timestamps

  field :date, type: DateTime
  field :duration, type: Integer
  field :format, type: Symbol

  belongs_to :band

  belongs_to :place
end

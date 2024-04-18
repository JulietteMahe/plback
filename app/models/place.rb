# frozen_string_literal: true

# Place
#
# Represents a place welcoming an band/artist
class Place
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String

  has_many :events

  embeds_many :contacts
end

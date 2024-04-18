# frozen_string_literal: true

# Band
#
# This class it's a  representation about an band/artist. Is used for
# storing many contacts (email, spotify, tik tok, etc ...), events past
# and future
class Band
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String

  has_one :genre
  has_one :sub_genre

  embeds_many :contacts

  has_many :events

  has_and_belongs_to_many :collectives
end

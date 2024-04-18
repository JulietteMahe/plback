# frozen_string_literal: true

# Collective
#
# Groupe of band/artist
class Collective
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String

  embeds_many :contacts

  has_and_belongs_to_many :bands
end

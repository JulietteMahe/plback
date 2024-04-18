# frozen_string_literal: true

# SubGenre
class SubGenre
  include Mongoid::Document

  field :name, type: String

  belongs_to :band
end

# frozen_string_literal: true

# Genre
class Genre
  include Mongoid::Document

  field :name, type: String

  belongs_to :band
end

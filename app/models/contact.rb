# frozen_string_literal: true

# Contact
#
# A contact represents several solutions, such as emails,
# soundcloud page, youtube channel ...
class Contact
  include Mongoid::Document

  field :name, type: String
  field :link, type: String

  embedded_in :band
  embedded_in :collective
  embedded_in :place
end

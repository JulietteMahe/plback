# frozen_string_literal: true

require 'rails_helper'

describe Contact, type: :model, name: :contact do
  it { is_expected.to be_mongoid_document }

  it { is_expected.to be_embedded_in(:band) }
  it { is_expected.to be_embedded_in(:collective) }
end

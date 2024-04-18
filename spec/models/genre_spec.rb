# frozen_string_literal: true

require 'rails_helper'

describe Genre, type: :model, name: :genre do
  it { is_expected.to be_mongoid_document }

  it { is_expected.to have_field(:name).of_type(String) }

  it { is_expected.to belong_to(:band) }
end

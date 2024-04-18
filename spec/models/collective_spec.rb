# frozen_string_literal: true

require 'rails_helper'

describe Collective, type: :model, name: :collective do
  it { is_expected.to be_mongoid_document }
  it { is_expected.to have_timestamps }

  it { is_expected.to have_field(:name).of_type(String) }

  it { is_expected.to embed_many(:contacts) }

  it { is_expected.to have_and_belong_to_many(:bands) }
end

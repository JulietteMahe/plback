# frozen_string_literal: true

require 'rails_helper'

describe Event, type: :model, name: :event do
  it { is_expected.to be_mongoid_document }
  it { is_expected.to have_timestamps }

  it { is_expected.to have_field(:date).of_type(DateTime) }
  it { is_expected.to have_field(:duration).of_type(Integer) }
  it { is_expected.to have_field(:format).of_type(Symbol) }

  it { is_expected.to belong_to(:band) }
end

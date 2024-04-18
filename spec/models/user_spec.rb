# frozen_string_literal: true

require 'rails_helper'

describe User, type: :model, name: :user do
  it { is_expected.to be_mongoid_document }
  it { is_expected.to have_timestamps }

  it { is_expected.to have_field(:email).of_type(String).with_default_value_of('') }
  it { is_expected.to have_field(:encrypted_password).of_type(String).with_default_value_of('') }
  it { is_expected.to have_field(:reset_password_token).of_type(String) }
  it { is_expected.to have_field(:reset_password_sent_at).of_type(Time) }
  it { is_expected.to have_field(:confirmation_token).of_type(String) }
  it { is_expected.to have_field(:confirmed_at).of_type(Time) }
  it { is_expected.to have_field(:confirmation_sent_at).of_type(Time) }
  it { is_expected.to have_field(:unconfirmed_email).of_type(String) }

  it { is_expected.to have_index_for(email: 1).with_options(unique: true, name: 'email_index') }
end

# frozen_string_literal: true

require 'rails_helper'
require 'validates_email_format_of/rspec_matcher'

RSpec.describe Family, type: :model do
  # Validate presence of required attributes
  it { is_expected.to validate_presence_of(:primary_member_first_name }
  it { is_expected.to validate_presence_of(:primary_member_last_name }
  it { is_expected.to validate_presence_of(:primary_member_age }
  it { is_expected.to validate_presence_of(:home_address) }
  it { is_expected.to validate_presence_of(:email_address) }
  it { is_expected.to validate_presence_of(:phone_number) }

  it { should validate_email_format_of(:email_address).with_message('Please supply a valid email address.') }
  it { should allow_value('foo@bar.baz').for(:email_address) }
  it { should_not allow_value('foo').for(:email_address) }

  it { should allow_value('6095401568').for(:phone_number) }
  it { should_not allow_value('123456789').for(:phone_number) }
  it { should_not allow_value('notanumber').for(:phone_number) }
end

# frozen_string_literal: true

require 'rails_helper'

RSpec.describe FamilyMember, type: :model do
  # Validate presence of required attributes
  it { is_expected.to validate_presence_of(:first_name) }
  it { is_expected.to validate_presence_of(:last_name) }
  it { is_expected.to validate_presence_of(:age) }
  it { is_expected.to validate_presence_of(:family_id) }
  it { is_expected.to validate_presence_of(:relationship_id) }

  it { should allow_value(21).for(:age) }
  it { should_not allow_value(21.23).for(:age) }

  context 'minimum working age requirement' do
    before(:each) do
      @family = Family.create!(primary_member_first_name: 'First', primary_member_last_name: 'Last', primary_member_age: 21, home_address: 'an address', email_address: 'email@email.com', phone_number: '6095401568')
      @relationship = Relationship.create!(name: 'Relation')
    end

    it 'should not allow an age less than 14 and working true' do
      family_member = FamilyMember.new(first_name: 'First', last_name: 'Last', age: 13, working: true, family: @family, relationship: @relationship)
      expect(family_member).to be_invalid
    end

    it 'should allow an age of at least 14 and working true' do
      family_member = FamilyMember.new(first_name: 'First', last_name: 'Last', age: 14, working: true, family: @family, relationship: @relationship)
      expect(family_member).to be_valid
    end
  end
end

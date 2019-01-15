# frozen_string_literal: true

require 'rails_helper'

RSpec.describe FamilyMember, type: :model do
    # Validate presence of required attributes
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
    it { is_expected.to validate_presence_of(:age) }
    it { is_expected.to validate_presence_of(:working) }
    it { is_expected.to validate_presence_of(:family_id) }
    it { is_expected.to validate_presence_of(:relationship_id) }

    it { should allow_value(21).for(:age) }
    it { should_not allow_value(21.23).for(:age) }
end

# frozen_string_literal: true

##
# The PrimaryFamilyMember model represents the head of the household for a family
#
class PrimaryFamilyMember < FamilyMember
  belongs_to :family, inverse_of: :primary_family_member
  validates :age, numericality: { greater_than_or_equal_to: 21 }
end

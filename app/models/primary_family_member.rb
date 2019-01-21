# frozen_string_literal: true

##
# The PrimaryFamilyMember model represents the head of the household for a family
#
class PrimaryFamilyMember < FamilyMember
  validates :age, numericality: { greater_than_or_equal_to: 21 }
end

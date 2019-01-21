# frozen_string_literal: true

##
# The FamilyMember model represents people that belong to a Family
# Two models inherit from Family Member: PrimaryFamilyMember and AdditionalFamilyMember
#
class FamilyMember < ApplicationRecord
  belongs_to :family

  validates :first_name, :last_name, :age, :family_id, presence: true
  validates :age, numericality: { only_integer: true }

  validate :limit_number_of_family_members

  ##
  # A custom validation method that ensures each family has at most 9 FamilyMembers besides the primary member
  #
  def limit_number_of_family_members
    errors.add(:base, 'You cannot add any more family members to this family') if family.family_members.size > 9
  end

  ##
  # A method that improves readability by providing a way to easily join first_name and last_name in a string
  #
  def full_name
    "#{first_name} #{last_name}"
  end
end

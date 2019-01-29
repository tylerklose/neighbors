# frozen_string_literal: true

##
# The AdditionalFamilyMember model represents people that belong to a Family (other than the primary member)
#
class AdditionalFamilyMember < FamilyMember
  belongs_to :family, inverse_of: :additional_family_members

  belongs_to :relationship

  validates :relationship_id, presence: true
  validates :working, inclusion: { in: [true, false] }
  validate :working_minimum_age_requirement

  ##
  # A custom validation method that enforces the rule that one must be at least 14 years old to legally work
  #
  def working_minimum_age_requirement
    errors.add(:working, 'You must be at least 14 years old to work') if working && age < 14
  end
end

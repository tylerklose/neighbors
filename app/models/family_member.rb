# frozen_string_literal: true

class FamilyMember < ApplicationRecord
  belongs_to :family
  belongs_to :relationship

  validates :first_name, :last_name, :age, :family_id, :relationship_id, presence: true
  validates :working, inclusion: { in: [true, false] }
  validates :age, numericality: { only_integer: true }
  validate :working_minimum_age_requirement

  validate :limit_number_of_family_members

  def limit_number_of_family_members
    errors.add(:base, 'You cannot add any more family members to this family') if family.family_members.size > 9
  end

  def working_minimum_age_requirement
    errors.add(:working, 'You must be at least 14 years old to work') if working && age < 14
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end

# frozen_string_literal: true

class FamilyMember < ApplicationRecord
  belongs_to :family
  belongs_to :relationship

  validates :first_name, :last_name, :age, :working, :family_id, :relationship_id, presence: true
  validates :age, numericality: { only_integer: true }
end

class AdditionalFamilyMember < FamilyMember
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

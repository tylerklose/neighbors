class PrimaryFamilyMember < FamilyMember
  validates :age, numericality: { greater_than_or_equal_to: 21 }
end

# frozen_string_literal: true

##
# Top level class which encompasses a primary member and has many FamilyMembers.
#
class Family < ApplicationRecord
  validates :home_address, :email_address, :phone_number, presence: true
  validates_email_format_of :email_address, message: 'Please supply a valid email address.'
  validates :phone_number, format: { with: /\d{10}/ }

  has_many :family_members, dependent: :destroy
  has_one :primary_family_member
  has_many :additional_family_members

  geocoded_by :home_address
  after_validation :geocode

  ##
  # This method provides an alias to the primary_member_last_name attribute.
  #
  def name
    primary_family_member.last_name
  end
end

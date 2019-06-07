# frozen_string_literal: true

##
# Top level class which encompasses a primary member and has many FamilyMembers.
#
class Family < ApplicationRecord
  validates :home_address, :email_address, :phone_number, presence: true
  validates_email_format_of :email_address, message: 'Please supply a valid email address.'
  validates :phone_number, format: { with: /\d{10}/ }

  has_many :family_members, dependent: :destroy

  has_one :primary_family_member, inverse_of: :family, dependent: :destroy
  accepts_nested_attributes_for :primary_family_member

  has_many :additional_family_members, inverse_of: :family, dependent: :destroy

  geocoded_by :home_address
  after_validation :geocode, if: ->(obj) { obj.home_address.present? && obj.home_address_changed? }

  ##
  # This method provides an alias to the primary_member_last_name attribute.
  #
  def name
    primary_family_member.last_name
  end

  def coordinates_for_google_maps
    { lat: latitude, lng: longitude }.to_json
  end
end

# frozen_string_literal: true

class Family < ApplicationRecord
  validates :primary_member_first_name, :primary_member_last_name, :primary_member_age, :home_address, :email_address, :phone_number, presence: true
  validates :primary_member_age, numericality: { greater_than_or_equal_to: 21 }
  validates_email_format_of :email_address, message: 'Please supply a valid email address.'
  validates :phone_number, format: { with: /\d{10}/ }

  has_many :family_members, dependent: :destroy
end

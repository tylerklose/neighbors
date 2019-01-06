# frozen_string_literal: true

# Class representing family. A family can have one or more family_members through the Person model.
class Family < ApplicationRecord
  validates :home_address, :email_address, :phone_number, presence: true
  validates_email_format_of :email_address, message: 'Please supply a valid email address.'
  validates :phone_number, format: { with: /\d{10}/ }
end

# frozen_string_literal: true

json.extract! family, :id, :home_address, :email_address, :phone_number, :created_at, :updated_at
json.url family_url(family, format: :json)

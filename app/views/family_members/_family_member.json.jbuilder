# frozen_string_literal: true

json.extract! family_member, :id, :first_name, :last_name, :age, :working, :family_id, :relationship_id, :created_at, :updated_at
json.url family_member_url(family_member, format: :json)

# frozen_string_literal: true

json.array! @family_members, partial: 'family_members/family_member', as: :family_member

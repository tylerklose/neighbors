# frozen_string_literal: true

class MoveFamilyMembersToAdditionalFamilyMembers < ActiveRecord::Migration[5.2]
  def change
    FamilyMember.all.each do |family_member|
      family_member.update!(type: 'AdditionalFamilyMember')
    end
  end
end

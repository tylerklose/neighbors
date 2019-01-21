class TransferPrimaryMembers < ActiveRecord::Migration[5.2]
  def change
    Family.all.each do |family|
      member_hash = {
        first_name: family.primary_member_first_name,
        last_name: family.primary_member_last_name,
        age: family.primary_member_age,
        family_id: family.id
      }

      PrimaryFamilyMember.create!(member_hash)
    end
  end
end

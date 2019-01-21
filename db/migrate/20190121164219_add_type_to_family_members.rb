class AddTypeToFamilyMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :family_members, :type, :string
  end
end

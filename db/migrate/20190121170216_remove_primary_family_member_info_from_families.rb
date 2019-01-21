# frozen_string_literal: true

class RemovePrimaryFamilyMemberInfoFromFamilies < ActiveRecord::Migration[5.2]
  def change
    remove_column :families, :primary_member_first_name, :string
    remove_column :families, :primary_member_last_name, :string
    remove_column :families, :primary_member_age, :integer
  end
end

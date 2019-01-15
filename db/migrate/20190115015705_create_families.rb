# frozen_string_literal: true

class CreateFamilies < ActiveRecord::Migration[5.2]
  def change
    create_table :families do |t|
      t.string :primary_member_first_name
      t.string :primary_member_last_name
      t.integer :primary_member_age
      t.string :home_address
      t.string :email_address
      t.string :phone_number

      t.timestamps
    end
  end
end

# frozen_string_literal: true

# Initial creation of the families table.
class CreateFamilies < ActiveRecord::Migration[5.2]
  def change
    create_table :families do |t|
      t.jsonb :home_address
      t.string :email_address
      t.string :phone_number

      t.timestamps
    end
  end
end

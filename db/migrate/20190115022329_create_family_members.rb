# frozen_string_literal: true

##
# Migration to create the FamilyMembers table
#
class CreateFamilyMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :family_members do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.boolean :working
      t.references :family, foreign_key: true
      t.references :relationship, foreign_key: true

      t.timestamps
    end
  end
end

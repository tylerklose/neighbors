# frozen_string_literal: true

##
# Migration to create the Relationships table
#
class CreateRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :relationships do |t|
      t.string :name

      t.timestamps
    end
  end
end

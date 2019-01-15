# frozen_string_literal: true

class CreateRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :relationships do |t|
      t.string :name

      t.timestamps
    end
  end
end

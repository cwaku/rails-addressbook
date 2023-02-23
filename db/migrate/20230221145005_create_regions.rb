# frozen_string_literal: true

# Creates a new region table.
class CreateRegions < ActiveRecord::Migration[7.0]
  def change
    create_table :regions do |t|
      t.string :name
      t.string :remarks

      t.references :user, null: false, foreign_key: true

      t.timestamps
      change_column_default :regions, :updated_at, from: DateTime.now, to: nil
    end
  end
end

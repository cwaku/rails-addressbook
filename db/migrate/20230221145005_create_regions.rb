# frozen_string_literal: true

# Creates a new region table.
class CreateRegions < ActiveRecord::Migration[7.0]
  def change
    create_table :regions do |t|
      t.string :name
      t.string :remarks

      t.references :user, null: false, foreign_key: true

      t.timestamps
      change_column_null :regions, :updated_at, true
    end
  end
end

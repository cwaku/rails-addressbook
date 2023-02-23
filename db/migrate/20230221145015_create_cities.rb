# frozen_string_literal: true

# Creates a new cities table.
class CreateCities < ActiveRecord::Migration[7.0]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :remarks

      t.references :user, null: false, foreign_key: true
      t.references :region, null: false, foreign_key: true

      t.timestamps
    end
    change_column_default :cities, :updated_at, from: DateTime.now, to: nil
  end
end

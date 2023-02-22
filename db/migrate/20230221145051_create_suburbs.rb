# frozen_string_literal: true

# Creates a new suburbs table.
class CreateSuburbs < ActiveRecord::Migration[7.0]
  def change
    create_table :suburbs do |t|
      t.string :name
      t.string :remarks

      t.references :user, null: false, foreign_key: true
      t.references :city, null: false, foreign_key: true

      t.timestamps
    end
    change_column_null :suburbs, :updated_at, true
  end
end

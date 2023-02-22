# frozen_string_literal: true

# Create a new contacts table.
class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.text :remarks
      t.references :user, null: false, foreign_key: true
      t.references :suburb, null: false, foreign_key: true

      t.timestamps
    end
    change_column_null :contacts, :updated_at, true
  end
end

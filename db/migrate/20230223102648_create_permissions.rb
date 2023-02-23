# Creates a new instance of CreatePermissions.
class CreatePermissions < ActiveRecord::Migration[7.0]
  def change
    create_table :permissions do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
    change_column_default :permissions, :updated_at, from: DateTime.now, to: nil
  end
end

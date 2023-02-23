class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
    change_column_default :roles, :updated_at, from: DateTime.now, to: nil
  end
end

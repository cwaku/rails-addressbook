class CreateSuburbs < ActiveRecord::Migration[7.0]
  def change
    create_table :suburbs do |t|

      t.timestamps
    end
  end
end

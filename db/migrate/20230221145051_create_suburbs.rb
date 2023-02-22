# frozen_string_literal: true

class CreateSuburbs < ActiveRecord::Migration[7.0]
  def change
    create_table :suburbs, &:timestamps
  end
end

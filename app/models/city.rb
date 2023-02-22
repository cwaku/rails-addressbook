# frozen_string_literal: true

# Creates a new ApplicationRecord.
class City < ApplicationRecord
  has_one :region, class_name: 'Region', dependent: :destroy
  has_many :suburbs, dependent: :destroy, class_name: 'Suburb'
  has_many :contacts, through: :suburbs, class_name: 'Contact'
  has_many :users, through: :contacts, class_name: 'User'
end

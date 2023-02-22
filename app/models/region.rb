# frozen_string_literal: true

# Creates a new ApplicationRecord object.
class Region < ApplicationRecord
  has_many :cities, class_name: 'City'
  has_many :suburbs, through: :cities, class_name: 'Suburb'
  has_many :contacts, through: :suburbs, class_name: 'Contact'
  has_many :users, through: :contacts, class_name: 'User'

  validates :name, presence: true
  validates :remarks, presence: true
end

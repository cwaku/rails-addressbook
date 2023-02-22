# frozen_string_literal: true

# Creates a new ApplicationRecord object.
class Suburb < ApplicationRecord
  belongs_to :city, class_name: 'City'
  has_many :contacts, dependent: :destroy
  has_many :users, through: :contacts
  has_one :region, through: :city

  validates :name, presence: true
  validates :remarks, presence: true
end

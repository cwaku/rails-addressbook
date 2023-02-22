# frozen_string_literal: true

# Creates a new User object.
class Contact < ApplicationRecord
  belongs_to :user, class_name: 'User'
  has_one :suburb, class_name: 'Suburb', dependent: :destroy
  has_one :city, through: :suburb, class_name: 'City'
  has_one :region, through: :city, class_name: 'Region'
end

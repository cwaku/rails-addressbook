class Region < ApplicationRecord
    has_many :cities, dependent: :destroy
    has_many :suburbs, through: :cities
end

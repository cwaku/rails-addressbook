class City < ApplicationRecord
    has_many :suburbs, dependent: :destroy
end

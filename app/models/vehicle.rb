class Vehicle < ApplicationRecord
    has_many :drive_routes
    validates :classification, :brand, :year, :fuel, :identification_plate, presence: true
end

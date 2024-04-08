class Driver < ApplicationRecord
    has_many :drive_routes
    validates :name, :last_name, :email, :phone, :contractor_company, presence: true
end

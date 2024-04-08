class DriveRoute < ApplicationRecord
    has_many :trips
    belongs_to :vehicle
    belongs_to :driver

    validates :name, :company, :status_route, :limit_date, :start_date, presence: true
end

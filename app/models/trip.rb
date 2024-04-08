class Trip < ApplicationRecord
  belongs_to :drive_route
  has_many :transactions
  validates :origin, :destiny, :start_date, :end_date, :stops, :status, :priority, presence: true
  enum status: { finished: "Finalizado", on_the_road: "En Camino", not_started: "No Iniciado" }

end

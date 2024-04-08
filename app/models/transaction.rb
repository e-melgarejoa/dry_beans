class Transaction < ApplicationRecord
  belongs_to :trip
  validates :transaction_type, :receiver, :seller, :status, presence: true
  enum status: { collected: "Retiro Completo", half_collected: "Parcialmente Retirado", uncollected: "No Retirado", delivered: "Despacho Completo", half_delivered: "Parcialmente Entregado", not_delivered: "No Entregado"}
  enum transaction_type: {collect_type: "Retiro", delivery_type: "Entrega"}
end

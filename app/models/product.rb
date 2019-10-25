class Product < ApplicationRecord
  validates :description,
            :color,
            :quantity,
            :unit_cost,
            :product_cost,
            :price,
            presence: true #valida que todos os cmpos são obrigatórios

  validates :quantity, numericality: { greater_than_or_equal_to: 0 }

  validates :unit_cost, :product_cost, :price, numericality: { greater_than: 0 }
end

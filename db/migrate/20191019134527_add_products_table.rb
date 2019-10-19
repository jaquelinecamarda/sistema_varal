class AddProductsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :description
      t.string :color
      t.integer :quantity
      t.float :unit_cost
      t.float :product_cost
      t.float :price

      t.timestamps # cria automaticamente created at e updated at data completa
      # e hora, util para gerar relatorios ordenacoes e etc.
    end
  end
end

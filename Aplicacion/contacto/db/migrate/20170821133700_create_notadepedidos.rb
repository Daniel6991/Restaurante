class CreateNotadepedidos < ActiveRecord::Migration[5.0]
  def change
    create_table :notadepedidos do |t|
      t.string :nombre_cliente
      t.integer :mesa
      t.text :platos
      t.float :precios
      t.datetime :fecha

      t.timestamps
    end
  end
end

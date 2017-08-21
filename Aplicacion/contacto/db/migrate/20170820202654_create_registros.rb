class CreateRegistros < ActiveRecord::Migration[5.0]
  def change
    create_table :registros do |t|
      t.string :nombre
      t.text :correo
      t.string :cargo

      t.timestamps
    end
  end
end

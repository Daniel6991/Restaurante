class CreateLibreta < ActiveRecord::Migration[5.0]
  def change
    create_table :libreta do |t|
      t.string :nombre
      t.integer :edad

      t.timestamps
    end
  end
end

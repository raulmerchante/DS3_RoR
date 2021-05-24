class CreateVacunaprueba < ActiveRecord::Migration[6.1]
  def change
    create_table :vacunaprueba do |t|
      t.integer :antigenos
      t.integer :lipidos
      t.integer :conservantes

      t.timestamps
    end
    add_index :vacunaprueba, :id, unique: true
  end
end
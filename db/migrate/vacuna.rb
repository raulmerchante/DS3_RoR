class CreateVacuna < ActiveRecord::Migration[6.1]
  def change
    create_table :vacuna do |t|
      t.integer :id
      t.integer :antigenos
      t.integer :lipidos
      t.integer :conservantes

      t.timestamps
    end
    add_index :vacuna, :id, unique: true
  end
end
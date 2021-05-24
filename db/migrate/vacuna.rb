class CreateVacuna < ActiveRecord::Migration[6.1]
  def change
    create_table :vacuna do |t|
      t.integer :antigenos
      t.integer :lipidos
      t.integer :conservantes

      t.timestamps
    end
  end
end
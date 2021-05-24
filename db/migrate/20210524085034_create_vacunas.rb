class CreateVacunas < ActiveRecord::Migration[6.1]
  def change
    create_table :vacunas do |t|
      t.integer :id
      t.integer :antigenos
      t.integer :lipidos
      t.integer :conservantes

      t.timestamps
    end
  end
end

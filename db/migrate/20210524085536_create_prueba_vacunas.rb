class CreatePruebaVacunas < ActiveRecord::Migration[6.1]
  def change
    create_table :prueba_vacunas do |t|
      t.integer :antigenos
      t.integer :lipidos
      t.integer :conservantes

      t.timestamps
    end
  end
end

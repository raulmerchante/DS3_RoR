class CreatePruebaRauls < ActiveRecord::Migration[6.1]
  def change
    create_table :prueba_rauls do |t|
      t.integer :pruebaedad

      t.timestamps
    end
  end
end

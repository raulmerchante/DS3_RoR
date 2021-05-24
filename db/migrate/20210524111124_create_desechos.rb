class CreateDesechos < ActiveRecord::Migration[6.1]
  def change
    create_table :desechos do |t|
      t.integer :id_vacuna_desechada
      t.integer :porcentaje_eficiencia

      t.timestamps
    end
  end
end

class CreateDiarios < ActiveRecord::Migration[6.1]
  def change
    create_table :diarios do |t|
      t.string :nombre_paciente
      t.string :apellidos_paciente
      t.string :fecha
      t.string :dni

      t.timestamps
    end
  end
end

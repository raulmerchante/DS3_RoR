class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.integer :team
      t.text :info

      t.timestamps
    end
    add_index :projects, :team, unique: true
  end
end

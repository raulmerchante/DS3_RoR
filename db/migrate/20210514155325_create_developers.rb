class CreateDevelopers < ActiveRecord::Migration[6.1]
  def change
    create_table :developers do |t|
      t.string :name
      t.string :surname
      t.belongs_to :project, null: false, foreign_key: true

      t.timestamps
    end
    add_index :developers, :surname
  end
end

class CreateTablaprueba < ActiveRecord::Migration[6.1]
  def change
    create_table :tablaprueba do |t|
      t.integer :edad
    
      t.timestamps
    end
  end
end

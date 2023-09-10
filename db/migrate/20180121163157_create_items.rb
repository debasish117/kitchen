class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.string :prep_time
      t.string :difficulty_level
      t.integer :category_id
      t.integer :restaurant_id
      t.integer :customer_id
      t.integer :pricing_id
      t.string :origin
      t.text :description
      t.timestamps
    end
    add_index :items, [:restaurant_id, :customer_id, :category_id]
  end
end

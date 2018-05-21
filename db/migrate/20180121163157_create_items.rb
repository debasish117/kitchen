class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.string :prep_time
      t.string :difficulty_level
      t.integer :category_id
      t.integer :pricing_id
      t.string :origin
      t.text :description
      t.timestamps
    end
    add_index :items, :category_id
  end
end

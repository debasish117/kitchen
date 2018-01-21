class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.string :prep_time
      t.string :difficulty_level
      t.integer :category
      t.string :origin
      t.timestamps
    end
    add_index :items, :category
  end
end

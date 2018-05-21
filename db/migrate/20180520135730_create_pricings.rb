class CreatePricings < ActiveRecord::Migration[5.1]
  def change
    create_table :pricings do |t|
      t.float :amount
      t.string :currency_type
      t.integer :item_id

      t.timestamps
    end
    add_index :pricings, :item_id
  end
end

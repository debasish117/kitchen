class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.integer :restaurant_id
      t.timestamps
    end
    add_index :orders, [:customer_id, :restaurant_id]
  end
end

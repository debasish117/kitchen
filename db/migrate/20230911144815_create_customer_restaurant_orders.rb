class CreateCustomerRestaurantOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :customer_restaurant_orders do |t|
      t.integer :customer_id
      t.integer :restaurant_id
      t.integer :order_id
      t.timestamps
    end
    add_index :customer_restaurant_orders, [:order_id, :restaurant_id]
  end
end

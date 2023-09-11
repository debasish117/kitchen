class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :status, default: 0
      t.integer :customer_id
      t.timestamps
    end
    add_index :orders, :customer_id
  end
end

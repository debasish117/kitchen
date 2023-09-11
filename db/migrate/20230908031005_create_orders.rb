class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :status, default: 0
      t.references :orderable, polymorphic: true
      t.timestamps
    end
  end
end

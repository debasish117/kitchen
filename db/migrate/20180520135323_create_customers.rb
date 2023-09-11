class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :contact_number
      t.string :gender
      t.integer :age

      t.timestamps
    end
  end
end

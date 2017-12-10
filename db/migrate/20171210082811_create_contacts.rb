class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.integer :mobile
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :user_id

      t.timestamps
    end
  end
end

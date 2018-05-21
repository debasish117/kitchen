class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :type
      t.text :address
      t.text :description
      t.string :speciality

      t.timestamps
    end
  end
end

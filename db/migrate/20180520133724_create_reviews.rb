class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :description
      t.integer :rating
      t.references :reviewable, polymorphic: true

      t.timestamps
    end
    add_index :reviews, :rating
  end
end

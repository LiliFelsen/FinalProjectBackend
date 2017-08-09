class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.reference :user
      t.reference :restaurant
      t.integer :rating
      t.text :notes

      t.timestamps
    end
  end
end

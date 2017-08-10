class CreateRestaurantTags < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurant_tags do |t|
      t.references :restaurant, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end

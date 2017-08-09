class CreateRestaurantTags < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurant_tags do |t|
      t.reference :restaurant
      t.reference :tag

      t.timestamps
    end
  end
end

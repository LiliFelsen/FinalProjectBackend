class CreateUserRestaurantTags < ActiveRecord::Migration[5.1]
  def change
    create_table :user_restaurant_tags do |t|
      t.references :user_restaurant, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end

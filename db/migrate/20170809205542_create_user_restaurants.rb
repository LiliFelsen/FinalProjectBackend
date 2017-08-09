class CreateUserRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :user_restaurants do |t|
      t.reference :user
      t.reference :restaurant
      t.boolean :visited

      t.timestamps
    end
  end
end

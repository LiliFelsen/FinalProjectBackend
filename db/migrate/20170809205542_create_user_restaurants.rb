class CreateUserRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :user_restaurants do |t|
      t.references :user, foreign_key: true
      t.references :restaurant, foreign_key: true
      t.boolean :visited, default: false 

      t.timestamps
    end
  end
end

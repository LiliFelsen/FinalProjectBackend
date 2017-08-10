class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :placeId
      t.decimal :lat
      t.decimal :lng
      t.string :name
      t.string :address
      t.string :phone_number
      t.string :website
      t.string :hours_monday
      t.string :hours_tuesday
      t.string :hours_wednesday
      t.string :hours_thursday
      t.string :hours_friday
      t.string :hours_saturday
      t.string :hours_sunday
      t.string :picture

      t.timestamps
    end
  end
end

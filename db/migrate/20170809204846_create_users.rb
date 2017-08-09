class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :profile_pic
      t.string :email
      t.string :password
      t.string :password_digest

      t.timestamps
    end
  end
end

class User < ApplicationRecord
  has_many :reviews
  # has_many :restaurants, through: :reviews
  has_many :user_restaurants
  has_many :restaurants, through: :user_restaurants
  has_many :user_restaurant_tags, through: :user_restaurants
  has_many :tags, through: :user_restaurant_tags

  # has_secure_password
end

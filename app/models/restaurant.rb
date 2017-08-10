class Restaurant < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews
  has_many :user_restaurants
  # has_many :users, through: :user_restaurants
  has_many :restaurant_tags
  has_many :tags, through: :restaurant_tags
end

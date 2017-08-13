class Restaurant < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews
  has_many :user_restaurants
  has_many :user_restaurant_tags, through: :user_restaurants
  has_many :tags, through: :user_restaurant_tags

  validates :placeId, uniqueness: true
end

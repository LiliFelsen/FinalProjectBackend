class Tag < ApplicationRecord
  has_many :user_restaurant_tags
  has_many :user_restaurants, through: :user_restaurant_tags
  has_many :restaurant, through: :user_restaurants

  validates :name, uniqueness: :true
end

class UserRestaurant < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  has_many :user_restaurant_tags
  has_many :tags, through: :user_restaurant_tags
end

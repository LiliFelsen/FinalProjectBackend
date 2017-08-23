class Restaurant < ApplicationRecord
  has_many :reviews
  has_many :reviewers, through: :reviews, source: :user
  has_many :user_restaurants
  has_many :users, through: :user_restaurants
  has_many :restaurant_tags
  has_many :tags, through: :restaurant_tags

  validates :placeId, uniqueness: :true
end

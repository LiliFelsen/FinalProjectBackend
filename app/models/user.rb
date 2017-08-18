class User < ApplicationRecord
  has_many :reviews
  has_many :user_restaurants
  has_many :restaurants, through: :user_restaurants
  has_many :friendships
  has_many :friends, through: :friendships

  has_secure_password
  validates :username, uniqueness: true
end

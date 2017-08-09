class User < ApplicationRecord
  has_many :reviews
  has_many :restaurants, through: :reviews
  has_many :user_restaurants
  has_many :restaurants, through: :user_restaurants

  has_secure_password
  validates :username, uniqueness: :true
end

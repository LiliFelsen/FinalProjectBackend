class UserSerializer < ActiveModel::Serializer
  attributes :id,
  :username,
  :name,
  :profile_pic,
  :email,
  :password

  has_many :reviews
  # has_many :restaurants, through: :reviews
  has_many :user_restaurants
  has_many :restaurants, through: :user_restaurants
  has_many :user_restaurant_tags, through: :user_restaurants
  has_many :tags, through: :user_restaurant_tags
end

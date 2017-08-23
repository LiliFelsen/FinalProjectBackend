class UserSerializer < ActiveModel::Serializer
  attributes :id,
  :username,
  :name,
  :profile_pic,
  :email

  has_many :reviews
  # has_many :reviewed_restaurants, through: :reviews
  has_many :user_restaurants
  has_many :restaurants, through: :user_restaurants
  has_many :friends, through: :friendships
end

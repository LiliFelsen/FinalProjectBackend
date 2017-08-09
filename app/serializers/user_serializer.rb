class UserSerializer < ActiveModel::Serializer
  attributes :id,
  :username,
  :profile_pic,
  :email,
  :password

  has_many :reviews
  has_many :user_restaurants
end

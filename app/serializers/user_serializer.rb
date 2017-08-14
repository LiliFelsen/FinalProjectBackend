class UserSerializer < ActiveModel::Serializer
  attributes :id,
  :username,
  :name,
  :profile_pic,
  :email

  has_many :reviews
  has_many :user_restaurants
end

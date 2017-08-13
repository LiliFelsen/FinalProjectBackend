class TagSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :user_restaurant_tags
  has_many :user_restaurants, through: :user_restaurant_tags
  has_many :restaurant, through: :user_restaurants
end

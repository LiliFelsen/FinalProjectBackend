class UserRestaurantSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :restaurant_id, :visited

  belongs_to :user
  belongs_to :restaurant
  has_many :user_restaurant_tags
  has_many :tags, through: :user_restaurant_tags
end

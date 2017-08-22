class UserRestaurantSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :restaurant_id, :visited

  belongs_to :user
  belongs_to :restaurant
end

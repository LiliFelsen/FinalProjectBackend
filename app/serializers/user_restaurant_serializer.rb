class UserRestaurantSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :restaurant_id, :visited
end

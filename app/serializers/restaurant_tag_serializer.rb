class RestaurantTagSerializer < ActiveModel::Serializer
  attributes :id, :tag_id, :restaurant_id
end

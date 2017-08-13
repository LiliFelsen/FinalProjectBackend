class UserRestaurantTagSerializer < ActiveModel::Serializer
  attributes :id, :tag_id, :user_restaurant_id

  belongs_to :tag
  belongs_to :user_restaurant
end

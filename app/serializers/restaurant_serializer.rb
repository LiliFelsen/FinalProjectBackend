class RestaurantSerializer < ActiveModel::Serializer
  attributes :id,
  :placeId,
  :lat,
  :lng,
  :name,
  :address,
  :phone_number,
  :website,
  :hours_monday,
  :hours_tuesday,
  :hours_wednesday,
  :hours_thursday,
  :hours_friday,
  :hours_saturday,
  :hours_sunday,
  :picture

  has_many :reviews
  has_many :restaurant_tags
  has_many :user_restaurants
end

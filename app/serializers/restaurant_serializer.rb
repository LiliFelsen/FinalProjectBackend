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
  has_many :users, through: :reviews
  has_many :user_restaurants
  has_many :user_restaurant_tags, through: :user_restaurants
  has_many :tags, through: :user_restaurant_tags
end

class UserRestaurantTag < ApplicationRecord
  belongs_to :user_restaurant
  belongs_to :tag
end

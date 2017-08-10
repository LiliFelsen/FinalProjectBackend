class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :restaurant_id, :rating, :notes, :created_at

  belongs_to :user
  belongs_to :restaurant
end

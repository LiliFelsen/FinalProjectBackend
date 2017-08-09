class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :notes

  belongs_to :user
  belongs_to :restaurant
end

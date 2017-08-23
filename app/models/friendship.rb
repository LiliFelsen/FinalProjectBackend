class Friendship < ApplicationRecord
  after_create :create_inverse_relationship
  belongs_to :user
  belongs_to :friend, class_name: 'User', foreign_key: 'friend_id'

  validates :user, presence: true
  validates :friend, presence: true, uniqueness: { scope: :user }

  private

  def create_inverse_relationship
    friend.friendships.create(friend: user)
  end

end

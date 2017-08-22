module Api
  module V1

    class FriendshipsController < ApplicationController

      def create
        @friendship = Friendship.create(friendship_params)
        # current_user = User.find(params[:user_id])
        # friend = User.find(params[:friend_id])
        # friend.friends << current_user
        render json: @friendship, status: 201
      end

      def index
        @friendships = Friendship.all
        render json: @friendships, status: 201
      end

      def show
        @friendship = Friendship.find(params[:id])
        render json: @friendship, status: 201
      end

      private

      def friendship_params
        params.require(:friendship).permit(:user_id, :friend_id)
      end

    end

  end
end

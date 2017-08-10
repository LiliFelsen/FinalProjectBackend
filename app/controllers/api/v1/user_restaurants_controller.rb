module Api
  module V1

    class Api::V1::UserRestaurantsController < ApplicationController

      def create
        @user_restaurant = UserRestaurant.create(user_id: params[user_id], restaurant_id: params[restaurant_id], visited: params[visited])
      end

      def destroy
        @user_restaurant = UserRestaurant.find(params[:id])
        @user_restaurant.destroy
      end

    end

  end
end

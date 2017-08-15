module Api
  module V1

    class Api::V1::UserRestaurantsController < ApplicationController
      before_action :set_user_restaurant, only: [:show, :update, :destroy]

      def index
        @user_restaurants = UserRestaurant.all
        render json: @user_restaurants, status: 201
      end

      def create
        @user_restaurant = UserRestaurant.create(user_restaurant_params)
        render json: @user_restaurant, status: 201
      end

      def update
        @user_restaurant.update(user_restaurant_params)
        render json: @user_restaurant, status: 201
      end

      def show
        render json: @user_restaurant, status: 201
      end

      def destroy
        @user_restaurant.destroy
      end

      private

      def user_restaurant_params
        params.require(:user_restaurant).permit(:user_id, :restaurant_id, :visited)
      end

      def set_user_restaurant
        @user_restaurant = UserRestaurant.find(params[:id])
      end

    end

  end
end

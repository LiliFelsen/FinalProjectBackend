module Api
  module V1

    class Api::V1::UserRestaurantTagsController < ApplicationController

      def index
        @user_restaurant_tags = UserRestaurantTag.all
        render json: @user_restaurant_tags, status: 201
      end

      def create
        @user_restaurant_tag = UserRestaurantTag.create(user_restaurant_tag_params)
        render json: @user_restaurant_tags, status: 201
      end

      def destroy
        @user_restaurant_tag = UserRestaurantTag.find(params[:id])
        @user_restaurant_tag.destroy
      end

      private

      def user_restaurant_tag_params
        params.require(:user_restaurant_tag).permit(:user_restaurant_id, :tag_id)
      end

    end

  end
end

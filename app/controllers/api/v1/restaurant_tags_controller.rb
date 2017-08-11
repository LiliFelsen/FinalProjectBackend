module Api
  module V1

    class Api::V1::RestaurantTagsController < ApplicationController

      def index
        @restaurant_tags = RestaurantTag.all
        render json: @restaurant_tags, status: 201
      end

      def create
        @restaurant_tag = RestaurantTag.create(restaurant_tag_params)
        render json: @restaurant_tags, status: 201
      end

      def destroy
        @restaurant_tag = RestaurantTag.find(params[:id])
        @restaurant_tag.destroy
      end

      private

      def restaurant_tag_params
        params.require(:restaurant_tag).permit(:restaurant_id, :tag_id)
      end

    end

  end
end

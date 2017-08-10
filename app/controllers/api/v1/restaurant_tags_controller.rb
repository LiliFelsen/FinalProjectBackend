module Api
  module V1

    class Api::V1::RestaurantTagsController < ApplicationController

      def create
        @restaurant_tag = RestaurantTag.create(restaurant_id: params[restaurant_id], tag_id: params[tag_id])
      end

      def destroy
        @restaurant_tag = RestaurantTag.find(params[:id])
        @restaurant_tag.destroy
      end

    end

  end
end

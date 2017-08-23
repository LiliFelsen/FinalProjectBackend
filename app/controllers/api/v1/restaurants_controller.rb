require 'httparty'
require 'json'

module Api
  module V1

    class Api::V1::RestaurantsController < ApplicationController
      before_action :set_restaurant, only: [:show, :update, :destroy]

      def create
        @restaurant = Restaurant.create(restaurant_params)
          if @restaurant.save
            url = "https://maps.googleapis.com/maps/api/place/details/json?placeid=#{@restaurant.placeId}&key=AIzaSyDXusTS714qpXljcDoKAm2j82JB9R-QOZs"
            response = HTTParty.get(url, format: :plain)
            r = JSON.parse response, symbolize_names: true
            @restaurant.update(lat: r[:result][:geometry][:location][:lat], lng: r[:result][:geometry][:location][:lng])
          end
        render json: @restaurant, status: 201
      end

      def update
        @restaurant.update(restaurant_params)
        render json: @restaurant, status: 201
      end

      def show
        render json: @restaurant, include: ['reviews', 'reviews.user', 'tags', 'user_restaurants' ]
      end

      def index
        @restaurants = Restaurant.all
        render json: @restaurants, status: 201
      end

      def destroy
        @restaurant.destroy
      end

      private

      def restaurant_params
        params.require(:restaurant).permit(:placeId, :lat, :lng, :name, :address, :phone_number, :website, :hours_monday, :hours_tuesday, :hours_wednesday, :hours_thursday, :hours_friday, :hours_saturday, :hours_sunday, :picture)
      end

      def set_restaurant
        @restaurant = Restaurant.find(params[:id])
      end

    end

  end
end

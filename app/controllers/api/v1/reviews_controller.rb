module Api
  module V1

    class Api::V1::ReviewsController < ApplicationController
      before_action :set_review, only: [:show, :destroy]

      def create
        @review = Review.create(review_params)
        render json: @review, status: 201
      end

      def show
        render json: @review, status: 201
      end

      def index
        @reviews = Review.all
        render json: @reviews, status: 201
      end

      def destroy
        @review.destroy
      end

      private

      def review_params
        params.permit(:user_id, :restaurant_id, :rating, :notes)
      end

      def set_review
        @review = Review.find(params[:id])
      end

    end

  end
end

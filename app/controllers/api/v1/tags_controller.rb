module Api
  module V1

    class Api::V1::TagsController < ApplicationController

      def create
        @tag = Tag.create(tag_params)
        render json: @tag, status: 201
      end

      def show
        @tag = Tag.find(params[:id])
        render json: @tag, status: 201
      end

      def index
        @tags = Tag.all
        render json: @tags, status: 201
      end

      private

      def tag_params
        params.require(:tag).permit(:name)
      end

    end

  end
end

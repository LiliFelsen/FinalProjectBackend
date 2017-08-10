module Api
  module V1

    class Api::V1::UsersController < ApplicationController
      before_action :set_user, only: [:show, :update, :destroy]

      def create
        @user = User.create(user_params)
        render json: @user, status: 201
      end

      def update
        @user.update(user_params)
        render json: @user, status: 201
      end

      def show
        render json: @user, status: 201
      end

      def index
        @users = User.all
        render json: @users, status: 201
      end

      def destroy
        @user.destroy
      end

      private

      def user_params
        params.permit(:username, :email, :password)
      end

      def set_user
        @user = User.find(params[:id])
      end

    end

  end
end

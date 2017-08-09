module Api
  module V1

    class Api::V1::UsersController < ApplicationController

      def create
        @user = User.create(username: params[username])
        render json: @user, status: 201
      end
    end

  end
end

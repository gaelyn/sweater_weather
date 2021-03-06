class Api::V1::UsersController < ApplicationController
  def create
    user = User.new(user_params)
    if user.save
      user.api_key
      render json: UserSerializer.new(user), status: 201
    elsif User.find_by(email: params[:email])
      render json: { errors: 'Email already registered' }, status: :conflict
    else
      render json: { errors: 'Unable to create user' }, status: :bad_request
    end
  end

  private

  def user_params
    params.permit(:email, :password, :password_confirmation, :api_key)
  end
end

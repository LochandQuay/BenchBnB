class Api::UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      login(@user)
      redirect_to root
    else
      render json: @user.errors.full_messages, status: 422
    end
  end
end

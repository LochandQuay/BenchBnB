class Api::SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_credentials(
      user_params[:username],
      user_params[:password]
    )
    if @user
      login(@user)
      redirect_to root
    else
      flash[:errors] = ["Invalid credentials"], status: 401
      render :new
    end
  end

  def destroy
    @user = current_user
    if @user.destroy
      render {}
    else
      render json: @user.errors.full_messages, status: 404
    end
  end
end

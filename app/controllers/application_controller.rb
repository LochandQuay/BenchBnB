class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find_by_session_token(session[:session_token])
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end

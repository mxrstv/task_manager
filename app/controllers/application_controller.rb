class ApplicationController < ActionController::Base
  helper_method :current_user, :sign_in

  def current_user
    @current_user ||= User.find_by(id: session[:user])
  end

  def sign_in(current_user)
    !current_user.nil?
  end

  def sign_out
    current_user == nil
  end
end

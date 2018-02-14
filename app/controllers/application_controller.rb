class ApplicationController < ActionController::Base
  include ActionController::MimeResponds
  include ActionController::Helpers
  # Use this method to authenticate Users.
   # before_action :authenticate_user!, unless: :devise_controller?

  helper_method :current_order
  def current_order
    if !session[:order_id].nil?
        Order.find(session[:order_id])
    else
        Order.new
    end
  end

  private

  def authenticate_user!
    user = User.find_by_auth_token(user_token)
    if user.nil?
      render json: { error: "Invaid Token"}
    else
      @current_user = user
    end
  end

  def user_token
    request.headers['X-AUTH-TOKEN'].presence || params['token'].presence
  end
end

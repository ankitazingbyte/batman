class Api::V1::SessionsController < ApplicationController

  def create
    
    @user = params[:email].present? && User.find_by(email: params[:email])
    # if user.valid_password? user_password
    unless @user.present?
      render json: { errors:"Invalid #{params.key(params[:username] || params[:email]).titleize} or Password",:success=>false }, status: 200
    else
      # sign_in @user
      render json: @user, status: 200
    end
  end

  def destroy
    user = User.find_by(auth_token: params[:auth_token])
    user.generate_auth_token
    user.save
    render json: user, status: 200
  end

end

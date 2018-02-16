class Api::V1::SessionsController < ApplicationController
  
  skip_before_action :authenticate_user! #, :only => [:set_status]
  
  def create
    @user = User.authenticate(params[:email], params[:password])
    begin
    unless @user.present?
      render json: { message:"Invalid Email or Password!",:status=>false }, status: 200
    else
      render json: { status: true, message: "Sign in successful!", user: @user}, status: 200
      end
      rescue => e
      render json: {status: false, message: e.message}, :status=>200
    end
  end

  def destroy
    user = User.find_by(auth_token: params[:auth_token])
    user.generate_auth_token
    user.save
    render json: user, status: 200
  end
end

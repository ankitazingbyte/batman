class Api::V1::RegistrationsController < ApplicationController

  skip_before_action :authenticate_user! #, :only => [:set_status]

  def create
    debugger
    user_params = params.permit(:email,:password,:username)
    @user = User.new(user_params)
    begin
      @user.save!
      if @user.persisted?
        respond_to {|format| format.json}
      else
        render json: {status: false, message: @user.errors.full_messages.first}, :status=>200
      end
    rescue => e
      render json: {status: false, message: e.message}, :status=>200
    end
  end

end
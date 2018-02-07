class ApplicationController < ActionController::API
  # Include Knock within your application.
      include Knock::Authenticable
  	  # include ActionController::Helpers
  	  # helper_method :current_order
    	# def current_order
     #  	if !session[:order_id].nil?
     #    		Order.find(session[:order_id])
     #  	else
     #    		Order.new
     #  	end
    	# end
      
  def return_unauthorized
    render status: :unauthorized
  end
    
    protected
    
    # Method for checking if current_user is admin or not.
    def authorize_as_admin
      return_unauthorized unless !current_user.nil? && current_user.is_admin?
    end
end



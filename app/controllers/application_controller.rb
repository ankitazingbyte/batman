class ApplicationController < ActionController::API
	  include ActionController::Helpers
	  helper_method :current_order

  	def current_order
    	if !session[:order_id].nil?
      		Order.find(session[:order_id])
    	else
      		Order.new
    	end
  	end
end

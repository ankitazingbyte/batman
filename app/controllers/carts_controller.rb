class CartsController < ApplicationController
  	def show
  	    @order_items = current_order.order_items
  	    render json: current_order.order_items
  	end
end

class CartsController < ApplicationController
  	def show
  	    @order_items = current_order.order_items
  	    render json: @order_item
  	end
end

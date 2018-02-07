class OrdersController < ApplicationController
  
    def index
      @orders = Order.all  
      render json: @orders   
    end
    def new
      @order = Order.new
      @order = Order.new(:express_token => params[:token])
    end
    def create
      @order = Order.new(order_params)
        if @order.save
           redirect_to @order
        else 
           render 'new'
        end
    end
    def destroy
      @order =Order.find(params[:id])
      @order.destroy
        redirect_to orders_path
    end

    private
      def order_params
        params.require(:order).permit(:subtotal, :total, :order_status_id)
      end
end

class Api::V1::OrdersController < ApplicationController
  def index
    orders = customer.orders
    render json: { orders: orders }
  end

  def create
    order = customer.orders.new(order_params)
    if order.save
      render json: {order: order}
    else
      render json: {error: "Something went wrong !"}, status: 403
    end
  end

  private

  def customer
    @_customer ||= Customer.find(params[:customer_id])
  end

  def order_params
    params.require(:order).permit(:status, item_ids: [])
  end
end

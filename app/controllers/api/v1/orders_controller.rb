class Api::V1::OrdersController < ApplicationController
  def index
    orders = customer.orders
    render json: { orders: orders }
  end

  def create
    ActiveRecord::Base.transaction do
      order = customer.orders.new(order_params)
      if order.save!
        place_order = customer.customer_restaurant_orders.new(order_id: order.id, restaurant_id: restaurant.id)
        if place_order.save!
          render json: {order: order}
        end
      else
        render json: {error: "Something went wrong !"}, status: 403
      end
    end
  end

  private

  def restaurant
    @_restaurant ||= Restaurant.find(params[:restaurant_id])
  end

  def customer
    @_customer ||= Customer.find(params[:customer_id])
  end

  def order_params
    params.require(:order).permit(:customer_id, :restaurant_id, item_ids: [])
  end
end

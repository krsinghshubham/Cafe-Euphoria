class OrdersController < ApplicationController
  def update
    id = params[:id]

    selected_order = Order.find(id)
    if (selected_order.completed)
      selected_order.completed = false
    else
      selected_order.completed = true
    end
    selected_order.save!
    redirect_to orders_path
  end
end

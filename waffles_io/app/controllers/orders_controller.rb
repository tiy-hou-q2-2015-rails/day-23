class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find params[:id]
  end

  def new
    @order = Order.new
  end

  def edit
    @order = Order.find params[:id]
  end

  def create
    @order = Order.new params.require(:order).permit(:quantity, :waffle_type, :special_instructions, :customer_name)
    # order.quantity = params[:order][:quantity]
    # order.waffle_type = params[:order][:waffle_type]
    # order.special_instructions = params[:order][:special_instructions]

    if @order.save
      redirect_to root_path
    else
      # order did not save
      render :new
    end
  end

  def update
    @order = Order.find params[:id]
    if @order.update params.require(:order).permit(:quantity, :waffle_type, :special_instructions, :customer_name)
      redirect_to order_path(@order)
    else
      # order did not save
      render :edit
    end
  end

  def delete
    @order = Order.find params[:id]
    @order.destroy
    redirect_to root_path
  end
end

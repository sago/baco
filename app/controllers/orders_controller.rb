class OrdersController < ApplicationController
  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    @order = Order.find(params[:id])
    @order_items = @order.order_items
    @order_item = OrderItem.new
    @client = Client.find(@order.client_id)
  end

  # GET /orders/new
  # GET /orders/new.json
  def new
    if order = Order.create(:client_id => params[:client_id])
      redirect_to client_order_path(params[:client_id], order.id)
    else
      redirect_to client_path(params[:client_id]), :notice => 'El pedido no se pudo crear!'
    end

  end

  # GET /orders/1/edit
  def edit
    @order = Order.find(params[:id])
  end

  # PUT /orders/1
  # PUT /orders/1.json
  def update
    order_params = params[:order]
    @order = Order.find(params[:id])
    @order.client_id = order_params[:client_id]

    if @order.save
      redirect_to orders_path
    end
  end

  def checkout
    @order = Order.find params[:id]
    @order_items = @order.order_items
    @client = Client.find(@order.client_id)
  end

  def close
    order = Order.find params[:id]

    order_items = params[:order][:order_items_attributes]
    order_items.each do |index, values|
      order_item = OrderItem.find values[:id]
      order_item.quantity = values[:quantity]
      order_item.price = values[:price]
      if order_item.valid?
        order_item.save
      else
        redirect_to order_path(order.id), :error => 'No se pudo cerrar la cuenta'
      end
    end
    order.discount = params[:order][:discount]
    order.total -= order.discount
    order.close_at = Time.now
    if order.save
      redirect_to receipt_order_path(order.id), :layout => nil
    else
      redirect_to order_path(order.id), :error => 'No se pudo cerrar la cuenta'
    end
  end

  def receipt
    @order = Order.find params[:id]
    @order_items = @order.order_items
    render :layout => "checkout"

  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order = Order.find(params[:id])
    @order.destroy

    respond_to do |format|
      format.html { redirect_to orders_url }
      format.json { head :no_content }
    end
  end
end

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
    order = Order.new(:client_id => params[:client_id])
    if order.save
      redirect_to client_order_path(params[:client_id], order.id)
    else
      errors = order.errors.full_messages.join("\n ")
      redirect_to client_path(params[:client_id]), :notice => "El pedido no se pudo crear! \n #{errors}"
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
    binding.pry
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
    disc = ((order.discount).to_f/100).* order.total
    order.total -= disc
    order.close_at = Time.now
    @factura = params[:bill_check]
    if order.save
      redirect_to receipt_order_path(order.id, :factura => @factura), :layout => nil

      #aquí se debe de restar el quantity al inventario
      #debe buscar el product.inventory
      #@product = Product.where(order_item.product_id)
      #@product.inventory -= order_item.quantity
      #@product.save
      #Se debe de validar primero si hay producto en el inventario antes del checkout
    else
      redirect_to order_path(order.id), :error => 'No se pudo cerrar la cuenta'
    end
  end

  def receipt
    @order = Order.find params[:id]
    @order_items = @order.order_items
    if params[:factura] == '1'
      render :layout => "checkout"
    else
      redirect_to simplebill_order_path(@order, @order.order_items)
    end
  end

  def simplebill
    @order = Order.find params[:id]
    @order_items = @order.order_items
    render :layout => "checkout"
  end

  def cancel
    order = Order.find params[:id]
    if order.order_items.present?
      redirect_to order_path(order.id), :notice => 'No se puede cancelar la cuenta; tiene elementos'
    else
      order.destroy
      redirect_to orders_path, :notice => 'Cuenta cancelada'
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order = Order.find(params[:id])
    @order.destroy
  end
end

class OrderItemsController < ApplicationController
  skip_before_filter :require_login

  def create
    product = Product.find params[:order_item][:product_id]
    order_item = OrderItem.find_or_create_by_order_id_and_product_id(params[:order_id], product.id, :price => product.price)
    quantity = params[:order_item][:quantity].to_i + (order_item.quantity || 0)
    order_item.quantity = quantity
    order_item.price = product.price
    if order_item.save
      notice = 'Cuenta actualizada'
    else
      notice = 'No se pudo agregar'
    end
      respond_to do |format|
      format.js do
        @order = Order.find order_item.order_id
        @order_items = @order.order_items.all
        @order_item = OrderItem.new
      end
    end
    #redirect_to order_path(params[:order_id]), :notice => notice

  end

  def search_products
    if params[:term]
      product_list = Product.where("name like '#{params[:term]}%'")
    else
      product_list = Product.all
    end
    list = product_list.map { |p| Hash[:value => p.name, :label => p.name, :price => p.price, :id => p.id] }
    render :json => list
  end

  def destroy
    @order_item = OrderItem.find(params[:id])
    order_id = @order_item.order_id
    @order_item.destroy

    respond_to do |format|
      format.html { redirect_to order_path(order_id), :notice => 'Elemento eliminado' }
      format.js do
        @order = Order.find order_id
        @order_items = @order.order_items.all
        @order_item = OrderItem.new
      end
    end

  end
end

class OrderItemsController < ApplicationController
  def create
    product = Product.find params[:order_item][:product_id]

    order_item = OrderItem.find_or_create_by_order_id_and_product_id(params[:order_id], product.id, :quantity => params[:order_item][:quantity], :price => product.price)
    quantity = ((order_item.quantity).to_i  || 0)
    order_item.quantity = quantity
    order_item.price = product.price
    order_item.save
    if order_item.save
      notice = 'Cuenta actualizada'
    else
      notice = 'No se pudo agregar'
    end

    redirect_to order_path(params[:order_id]), :notice => notice

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
end

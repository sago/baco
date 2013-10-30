class ProductsController < ApplicationController
  # GET /products
  # GET /products.json
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

  def create
    @product = Product.new(params[:product])

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, :notice => 'Product was successfully created.' }
        format.json { render json: @product, :status => :created, :location => @product }
      else
        format.html { render action: "new" }
        format.json { render json: @product.errors, :status => :unprocessable_entity }
      end
    end
  end

  def search_suppliers
    if params[:term]
      suppliers_list = Supplier.where("name like '#{params[:term]}%'")
    else
      supplier_list = Supplier.all
    end
    list = supplier_list.map { |s| Hash[:value => s.name, :label => s.name, :phone => s.phone, :id => s.id] }
    render :json => list
  end

  def index
    @products = Product.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @product = Product.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product }
    end
  end

  # GET /products/new
  # GET /products/new.json
  def new
    @product = Product.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product }
    end
  end

  # GET /products/1/edit
  def edit
    @product = Product.find(params[:id])
  end

  # POST /products
  # POST /products.json

  # PUT /products/1
  # PUT /products/1.json
  def update
    @product = Product.find(params[:id])

    respond_to do |format|
      if @product.update_attributes(params[:product])
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.html { redirect_to products_url }
      format.json { head :no_content }
    end
  end
end

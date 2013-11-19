class ClientsController < ApplicationController
  # GET /clients
  # GET /clients.json

  def index
    @clients = Client.search(params[:search])
  end

  # GET /clients/1
  # GET /clients/1.json
  def show
    @client = Client.find(params[:id])

  end

  # GET /clients/new
  # GET /clients/new.json
  def new
    @client = Client.new
  end

  # GET /clients/1/edit
  def edit
    @client = Client.find(params[:id])
  end

  # POST /clients
  # POST /clients.json
  def create
    @client = Client.new(params[:client])
    respond_to do |format|
      if @client.valid?
        if @client.save
          format.html { redirect_to @client, :notice => 'El cliente se ha creado correctamente.' }
        else
          puts 'Algo'
          format.html { render :action => "new", :notice => 'Favor de checar los campos en rojo.' }
        end
      else
        format.html { render :action => "new", :notice => 'Favor de checar los campos en rojo.' }

      end
    end
  end

  # PUT /clients/1
  # PUT /clients/1.json
  def update
    @client = Client.find(params[:id])

    respond_to do |format|
      if @client.update_attributes(params[:client])
        format.html { redirect_to @client, :notice => 'El cliente se ha actualizado correctamente.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @client.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /clients/1
  # DELETE /clients/1.json
  def destroy
    @client = Client.find(params[:id])
    @client.destroy

    respond_to do |format|
      format.html { redirect_to clients_url }
      format.json { head :no_content }
    end
  end
end

class ClientsController < ApplicationController
  before_action :set_client, only: %i[ show edit update destroy ]

  # GET /clients or /clients.json
  def index
    @clients = Client.all
  end

  # GET /clients/1 or /clients/1.json
  def show
  end

  # GET /clients/new
  def new
    @client = Client.new
  end

  # GET /clients/1/edit
  def edit
  end

  # POST /clients or /clients.json
  def create
    @client = Client.new(client_params)

    if @client.save
      flash[:success] = "Se ha creado exitosamente el registro del Cliente #{@client.name}"
      redirect_to root_path
    else
      flash[:danger] = "No se ha podido crear el registro del Cliente, verifique por favor."
      redirect_to new_client_path
    end

  end

  # PATCH/PUT /clients/1 or /clients/1.json
  def update

    if @client.update(client_params)
      flash[:success] = "Se ha actualizado exitosamente el registro del Cliente #{@client.name}"
      redirect_to root_path
    else
      flash[:danger] = "No se ha podido actualizar el registro del cliente, verifique por favor."
      redirect_to edit_client_path(@client)
    end
  end

  # DELETE /clients/1 or /clients/1.json
  def destroy
    @client.destroy
    flash[:success] = "Se ha eliminado exitosamente el registro del Cliente."
    redirect_to root_path  
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def client_params
      params.require(:client).permit(:name, :address, :phone, :email, :rfc)
    end
end

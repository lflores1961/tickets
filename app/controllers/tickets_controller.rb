class TicketsController < ApplicationController
  before_action :set_ticket, only: %i[ show edit update destroy ]

  # GET /tickets or /tickets.json
  def index
    @tickets = Ticket.all
  end

  # GET /tickets/1 or /tickets/1.json
  def show
  end

  # GET /tickets/new
  def new
    @client = Client.find_by(id: params[:client_id])
    @ticket = @client.tickets.new
  end

  # GET /tickets/1/edit
  def edit
  end

  # POST /tickets or /tickets.json
  def create
    @client = Client.find_by(id: params[:ticket][:client_id] || params[:ticket][:parameters][:client_id])
    @ticket = @client.tickets.build(ticket_params)

    if @ticket.save
      flash[:success] = "Se ha creado exitosamente el ticket de #{ @client.name }"  
      redirect_to root_path
    else
      flash[:danger] = @ticket.errors[:base]
      redirect_to service_path(@client)
    end
  end

  # PATCH/PUT /tickets/1 or /tickets/1.json
  def update
    respond_to do |format|
      if @ticket.update(ticket_params)
        format.html { redirect_to @ticket, notice: "Ticket was successfully updated." }
        format.json { render :show, status: :ok, location: @ticket }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tickets/1 or /tickets/1.json
  def destroy
    @ticket.destroy
    respond_to do |format|
      format.html { redirect_to tickets_url, notice: "Ticket was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket
      @ticket = Ticket.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ticket_params
      params.require(:ticket).permit(:order_number, :order_date, :client_id, :equipment_descrip, :clave_equipment, :equipment_state, :observations, :diagnostic, :cost)
    end
end

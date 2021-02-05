class DashboardController < ApplicationController
  def main
    @clients = Client.all
    @total_tickets = Ticket.count
    @tickets_abiertos = Ticket.open.count
    @tickets_cerrados = Ticket.closed.count
    @porcentaje_abiertos = (@tickets_abiertos.to_f / @total_tickets.to_f) * 100.0
  end

  def tickets_view
    @client = Client.find_by(id: params[:client_id])
    @tickets = @client.tickets
  end
end

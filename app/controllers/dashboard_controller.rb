class DashboardController < ApplicationController
  def main
    @clients = Client.all
  end

  def tickets_view
    @client = Client.find_by(id: params[:client_id])
    @tickets = @client.tickets
  end
end

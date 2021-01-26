require 'test_helper'

class TicketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ticket = tickets(:one)
  end

  test "should get index" do
    get tickets_url
    assert_response :success
  end

  test "should get new" do
    get new_ticket_url
    assert_response :success
  end

  test "should create ticket" do
    assert_difference('Ticket.count') do
      post tickets_url, params: { ticket: { client_id: @ticket.client_id, cost: @ticket.cost, diagnostic: @ticket.diagnostic, equipment_descrip: @ticket.equipment_descrip, equipment_password: @ticket.equipment_password, equipment_state: @ticket.equipment_state, observations: @ticket.observations, order_date: @ticket.order_date, order_number: @ticket.order_number } }
    end

    assert_redirected_to ticket_url(Ticket.last)
  end

  test "should show ticket" do
    get ticket_url(@ticket)
    assert_response :success
  end

  test "should get edit" do
    get edit_ticket_url(@ticket)
    assert_response :success
  end

  test "should update ticket" do
    patch ticket_url(@ticket), params: { ticket: { client_id: @ticket.client_id, cost: @ticket.cost, diagnostic: @ticket.diagnostic, equipment_descrip: @ticket.equipment_descrip, equipment_password: @ticket.equipment_password, equipment_state: @ticket.equipment_state, observations: @ticket.observations, order_date: @ticket.order_date, order_number: @ticket.order_number } }
    assert_redirected_to ticket_url(@ticket)
  end

  test "should destroy ticket" do
    assert_difference('Ticket.count', -1) do
      delete ticket_url(@ticket)
    end

    assert_redirected_to tickets_url
  end
end

require "application_system_test_case"

class TicketsTest < ApplicationSystemTestCase
  setup do
    @ticket = tickets(:one)
  end

  test "visiting the index" do
    visit tickets_url
    assert_selector "h1", text: "Tickets"
  end

  test "creating a Ticket" do
    visit tickets_url
    click_on "New Ticket"

    fill_in "Client", with: @ticket.client_id
    fill_in "Cost", with: @ticket.cost
    fill_in "Diagnostic", with: @ticket.diagnostic
    fill_in "Equipment descrip", with: @ticket.equipment_descrip
    fill_in "Equipment password", with: @ticket.equipment_password
    fill_in "Equipment state", with: @ticket.equipment_state
    fill_in "Observations", with: @ticket.observations
    fill_in "Order date", with: @ticket.order_date
    fill_in "Order number", with: @ticket.order_number
    click_on "Create Ticket"

    assert_text "Ticket was successfully created"
    click_on "Back"
  end

  test "updating a Ticket" do
    visit tickets_url
    click_on "Edit", match: :first

    fill_in "Client", with: @ticket.client_id
    fill_in "Cost", with: @ticket.cost
    fill_in "Diagnostic", with: @ticket.diagnostic
    fill_in "Equipment descrip", with: @ticket.equipment_descrip
    fill_in "Equipment password", with: @ticket.equipment_password
    fill_in "Equipment state", with: @ticket.equipment_state
    fill_in "Observations", with: @ticket.observations
    fill_in "Order date", with: @ticket.order_date
    fill_in "Order number", with: @ticket.order_number
    click_on "Update Ticket"

    assert_text "Ticket was successfully updated"
    click_on "Back"
  end

  test "destroying a Ticket" do
    visit tickets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ticket was successfully destroyed"
  end
end

require "application_system_test_case"

class FoliosTest < ApplicationSystemTestCase
  setup do
    @folio = folios(:one)
  end

  test "visiting the index" do
    visit folios_url
    assert_selector "h1", text: "Folios"
  end

  test "creating a Folio" do
    visit folios_url
    click_on "New Folio"

    fill_in "Numero folio", with: @folio.numero_folio
    click_on "Create Folio"

    assert_text "Folio was successfully created"
    click_on "Back"
  end

  test "updating a Folio" do
    visit folios_url
    click_on "Edit", match: :first

    fill_in "Numero folio", with: @folio.numero_folio
    click_on "Update Folio"

    assert_text "Folio was successfully updated"
    click_on "Back"
  end

  test "destroying a Folio" do
    visit folios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Folio was successfully destroyed"
  end
end

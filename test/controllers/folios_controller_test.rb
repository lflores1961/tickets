require 'test_helper'

class FoliosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @folio = folios(:one)
  end

  test "should get index" do
    get folios_url
    assert_response :success
  end

  test "should get new" do
    get new_folio_url
    assert_response :success
  end

  test "should create folio" do
    assert_difference('Folio.count') do
      post folios_url, params: { folio: { numero_folio: @folio.numero_folio } }
    end

    assert_redirected_to folio_url(Folio.last)
  end

  test "should show folio" do
    get folio_url(@folio)
    assert_response :success
  end

  test "should get edit" do
    get edit_folio_url(@folio)
    assert_response :success
  end

  test "should update folio" do
    patch folio_url(@folio), params: { folio: { numero_folio: @folio.numero_folio } }
    assert_redirected_to folio_url(@folio)
  end

  test "should destroy folio" do
    assert_difference('Folio.count', -1) do
      delete folio_url(@folio)
    end

    assert_redirected_to folios_url
  end
end

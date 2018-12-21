require 'test_helper'

class AdressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adress = adresses(:one)
  end

  test "should get index" do
    get adresses_url
    assert_response :success
  end

  test "should get new" do
    get new_adress_url
    assert_response :success
  end

  test "should create adress" do
    assert_difference('Adress.count') do
      post adresses_url, params: { adress: { city: @adress.city, compl: @adress.compl, country: @adress.country, neighborhood: @adress.neighborhood, number: @adress.number, profile_id: @adress.profile_id, state: @adress.state, street: @adress.street, zip: @adress.zip } }
    end

    assert_redirected_to adress_url(Adress.last)
  end

  test "should show adress" do
    get adress_url(@adress)
    assert_response :success
  end

  test "should get edit" do
    get edit_adress_url(@adress)
    assert_response :success
  end

  test "should update adress" do
    patch adress_url(@adress), params: { adress: { city: @adress.city, compl: @adress.compl, country: @adress.country, neighborhood: @adress.neighborhood, number: @adress.number, profile_id: @adress.profile_id, state: @adress.state, street: @adress.street, zip: @adress.zip } }
    assert_redirected_to adress_url(@adress)
  end

  test "should destroy adress" do
    assert_difference('Adress.count', -1) do
      delete adress_url(@adress)
    end

    assert_redirected_to adresses_url
  end
end

require 'test_helper'

class ProviderprofilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @providerprofile = providerprofiles(:one)
  end

  test "should get index" do
    get providerprofiles_url
    assert_response :success
  end

  test "should get new" do
    get new_providerprofile_url
    assert_response :success
  end

  test "should create providerprofile" do
    assert_difference('Providerprofile.count') do
      post providerprofiles_url, params: { providerprofile: { cellphone: @providerprofile.cellphone, city: @providerprofile.city, cnpj: @providerprofile.cnpj, company: @providerprofile.company, compl: @providerprofile.compl, country: @providerprofile.country, cpf: @providerprofile.cpf, email: @providerprofile.email, name: @providerprofile.name, neighbor: @providerprofile.neighbor, number: @providerprofile.number, phone: @providerprofile.phone, social: @providerprofile.social, street: @providerprofile.street, team: @providerprofile.team, technic: @providerprofile.technic } }
    end

    assert_redirected_to providerprofile_url(Providerprofile.last)
  end

  test "should show providerprofile" do
    get providerprofile_url(@providerprofile)
    assert_response :success
  end

  test "should get edit" do
    get edit_providerprofile_url(@providerprofile)
    assert_response :success
  end

  test "should update providerprofile" do
    patch providerprofile_url(@providerprofile), params: { providerprofile: { cellphone: @providerprofile.cellphone, city: @providerprofile.city, cnpj: @providerprofile.cnpj, company: @providerprofile.company, compl: @providerprofile.compl, country: @providerprofile.country, cpf: @providerprofile.cpf, email: @providerprofile.email, name: @providerprofile.name, neighbor: @providerprofile.neighbor, number: @providerprofile.number, phone: @providerprofile.phone, social: @providerprofile.social, street: @providerprofile.street, team: @providerprofile.team, technic: @providerprofile.technic } }
    assert_redirected_to providerprofile_url(@providerprofile)
  end

  test "should destroy providerprofile" do
    assert_difference('Providerprofile.count', -1) do
      delete providerprofile_url(@providerprofile)
    end

    assert_redirected_to providerprofiles_url
  end
end

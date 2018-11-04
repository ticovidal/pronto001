require 'test_helper'

class IndustryprofilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @industryprofile = industryprofiles(:one)
  end

  test "should get index" do
    get industryprofiles_url
    assert_response :success
  end

  test "should get new" do
    get new_industryprofile_url
    assert_response :success
  end

  test "should create industryprofile" do
    assert_difference('Industryprofile.count') do
      post industryprofiles_url, params: { industryprofile: { cellphone: @industryprofile.cellphone, city: @industryprofile.city, cnpj: @industryprofile.cnpj, company: @industryprofile.company, compl: @industryprofile.compl, country: @industryprofile.country, cpf: @industryprofile.cpf, email: @industryprofile.email, name: @industryprofile.name, neighbor: @industryprofile.neighbor, number: @industryprofile.number, phone: @industryprofile.phone, social: @industryprofile.social, street: @industryprofile.street, team: @industryprofile.team, technic: @industryprofile.technic } }
    end

    assert_redirected_to industryprofile_url(Industryprofile.last)
  end

  test "should show industryprofile" do
    get industryprofile_url(@industryprofile)
    assert_response :success
  end

  test "should get edit" do
    get edit_industryprofile_url(@industryprofile)
    assert_response :success
  end

  test "should update industryprofile" do
    patch industryprofile_url(@industryprofile), params: { industryprofile: { cellphone: @industryprofile.cellphone, city: @industryprofile.city, cnpj: @industryprofile.cnpj, company: @industryprofile.company, compl: @industryprofile.compl, country: @industryprofile.country, cpf: @industryprofile.cpf, email: @industryprofile.email, name: @industryprofile.name, neighbor: @industryprofile.neighbor, number: @industryprofile.number, phone: @industryprofile.phone, social: @industryprofile.social, street: @industryprofile.street, team: @industryprofile.team, technic: @industryprofile.technic } }
    assert_redirected_to industryprofile_url(@industryprofile)
  end

  test "should destroy industryprofile" do
    assert_difference('Industryprofile.count', -1) do
      delete industryprofile_url(@industryprofile)
    end

    assert_redirected_to industryprofiles_url
  end
end

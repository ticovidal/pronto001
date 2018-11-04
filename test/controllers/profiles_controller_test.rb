require 'test_helper'

class ProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profile = profiles(:one)
  end

  test "should get index" do
    get profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_profile_url
    assert_response :success
  end

  test "should create profile" do
    assert_difference('Profile.count') do
      post profiles_url, params: { profile: { cellphone: @profile.cellphone, city: @profile.city, cnpj: @profile.cnpj, company: @profile.company, compl: @profile.compl, country: @profile.country, cpf: @profile.cpf, email: @profile.email, name: @profile.name, neighbor: @profile.neighbor, number: @profile.number, phone: @profile.phone, social: @profile.social, street: @profile.street, user_id: @profile.user_id } }
    end

    assert_redirected_to profile_url(Profile.last)
  end

  test "should show profile" do
    get profile_url(@profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_profile_url(@profile)
    assert_response :success
  end

  test "should update profile" do
    patch profile_url(@profile), params: { profile: { cellphone: @profile.cellphone, city: @profile.city, cnpj: @profile.cnpj, company: @profile.company, compl: @profile.compl, country: @profile.country, cpf: @profile.cpf, email: @profile.email, name: @profile.name, neighbor: @profile.neighbor, number: @profile.number, phone: @profile.phone, social: @profile.social, street: @profile.street, user_id: @profile.user_id } }
    assert_redirected_to profile_url(@profile)
  end

  test "should destroy profile" do
    assert_difference('Profile.count', -1) do
      delete profile_url(@profile)
    end

    assert_redirected_to profiles_url
  end
end

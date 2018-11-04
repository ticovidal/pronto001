require "application_system_test_case"

class ProfilesTest < ApplicationSystemTestCase
  setup do
    @profile = profiles(:one)
  end

  test "visiting the index" do
    visit profiles_url
    assert_selector "h1", text: "Profiles"
  end

  test "creating a Profile" do
    visit profiles_url
    click_on "New Profile"

    fill_in "Cellphone", with: @profile.cellphone
    fill_in "City", with: @profile.city
    fill_in "Cnpj", with: @profile.cnpj
    fill_in "Company", with: @profile.company
    fill_in "Compl", with: @profile.compl
    fill_in "Country", with: @profile.country
    fill_in "Cpf", with: @profile.cpf
    fill_in "Email", with: @profile.email
    fill_in "Name", with: @profile.name
    fill_in "Neighbor", with: @profile.neighbor
    fill_in "Number", with: @profile.number
    fill_in "Phone", with: @profile.phone
    fill_in "Social", with: @profile.social
    fill_in "Street", with: @profile.street
    fill_in "User", with: @profile.user_id
    click_on "Create Profile"

    assert_text "Profile was successfully created"
    click_on "Back"
  end

  test "updating a Profile" do
    visit profiles_url
    click_on "Edit", match: :first

    fill_in "Cellphone", with: @profile.cellphone
    fill_in "City", with: @profile.city
    fill_in "Cnpj", with: @profile.cnpj
    fill_in "Company", with: @profile.company
    fill_in "Compl", with: @profile.compl
    fill_in "Country", with: @profile.country
    fill_in "Cpf", with: @profile.cpf
    fill_in "Email", with: @profile.email
    fill_in "Name", with: @profile.name
    fill_in "Neighbor", with: @profile.neighbor
    fill_in "Number", with: @profile.number
    fill_in "Phone", with: @profile.phone
    fill_in "Social", with: @profile.social
    fill_in "Street", with: @profile.street
    fill_in "User", with: @profile.user_id
    click_on "Update Profile"

    assert_text "Profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Profile" do
    visit profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Profile was successfully destroyed"
  end
end

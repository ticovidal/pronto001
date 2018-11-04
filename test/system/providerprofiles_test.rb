require "application_system_test_case"

class ProviderprofilesTest < ApplicationSystemTestCase
  setup do
    @providerprofile = providerprofiles(:one)
  end

  test "visiting the index" do
    visit providerprofiles_url
    assert_selector "h1", text: "Providerprofiles"
  end

  test "creating a Providerprofile" do
    visit providerprofiles_url
    click_on "New Providerprofile"

    fill_in "Cellphone", with: @providerprofile.cellphone
    fill_in "City", with: @providerprofile.city
    fill_in "Cnpj", with: @providerprofile.cnpj
    fill_in "Company", with: @providerprofile.company
    fill_in "Compl", with: @providerprofile.compl
    fill_in "Country", with: @providerprofile.country
    fill_in "Cpf", with: @providerprofile.cpf
    fill_in "Email", with: @providerprofile.email
    fill_in "Name", with: @providerprofile.name
    fill_in "Neighbor", with: @providerprofile.neighbor
    fill_in "Number", with: @providerprofile.number
    fill_in "Phone", with: @providerprofile.phone
    fill_in "Social", with: @providerprofile.social
    fill_in "Street", with: @providerprofile.street
    fill_in "Team", with: @providerprofile.team
    fill_in "Technic", with: @providerprofile.technic
    click_on "Create Providerprofile"

    assert_text "Providerprofile was successfully created"
    click_on "Back"
  end

  test "updating a Providerprofile" do
    visit providerprofiles_url
    click_on "Edit", match: :first

    fill_in "Cellphone", with: @providerprofile.cellphone
    fill_in "City", with: @providerprofile.city
    fill_in "Cnpj", with: @providerprofile.cnpj
    fill_in "Company", with: @providerprofile.company
    fill_in "Compl", with: @providerprofile.compl
    fill_in "Country", with: @providerprofile.country
    fill_in "Cpf", with: @providerprofile.cpf
    fill_in "Email", with: @providerprofile.email
    fill_in "Name", with: @providerprofile.name
    fill_in "Neighbor", with: @providerprofile.neighbor
    fill_in "Number", with: @providerprofile.number
    fill_in "Phone", with: @providerprofile.phone
    fill_in "Social", with: @providerprofile.social
    fill_in "Street", with: @providerprofile.street
    fill_in "Team", with: @providerprofile.team
    fill_in "Technic", with: @providerprofile.technic
    click_on "Update Providerprofile"

    assert_text "Providerprofile was successfully updated"
    click_on "Back"
  end

  test "destroying a Providerprofile" do
    visit providerprofiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Providerprofile was successfully destroyed"
  end
end

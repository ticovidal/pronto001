require "application_system_test_case"

class IndustryprofilesTest < ApplicationSystemTestCase
  setup do
    @industryprofile = industryprofiles(:one)
  end

  test "visiting the index" do
    visit industryprofiles_url
    assert_selector "h1", text: "Industryprofiles"
  end

  test "creating a Industryprofile" do
    visit industryprofiles_url
    click_on "New Industryprofile"

    fill_in "Cellphone", with: @industryprofile.cellphone
    fill_in "City", with: @industryprofile.city
    fill_in "Cnpj", with: @industryprofile.cnpj
    fill_in "Company", with: @industryprofile.company
    fill_in "Compl", with: @industryprofile.compl
    fill_in "Country", with: @industryprofile.country
    fill_in "Cpf", with: @industryprofile.cpf
    fill_in "Email", with: @industryprofile.email
    fill_in "Name", with: @industryprofile.name
    fill_in "Neighbor", with: @industryprofile.neighbor
    fill_in "Number", with: @industryprofile.number
    fill_in "Phone", with: @industryprofile.phone
    fill_in "Social", with: @industryprofile.social
    fill_in "Street", with: @industryprofile.street
    fill_in "Team", with: @industryprofile.team
    fill_in "Technic", with: @industryprofile.technic
    click_on "Create Industryprofile"

    assert_text "Industryprofile was successfully created"
    click_on "Back"
  end

  test "updating a Industryprofile" do
    visit industryprofiles_url
    click_on "Edit", match: :first

    fill_in "Cellphone", with: @industryprofile.cellphone
    fill_in "City", with: @industryprofile.city
    fill_in "Cnpj", with: @industryprofile.cnpj
    fill_in "Company", with: @industryprofile.company
    fill_in "Compl", with: @industryprofile.compl
    fill_in "Country", with: @industryprofile.country
    fill_in "Cpf", with: @industryprofile.cpf
    fill_in "Email", with: @industryprofile.email
    fill_in "Name", with: @industryprofile.name
    fill_in "Neighbor", with: @industryprofile.neighbor
    fill_in "Number", with: @industryprofile.number
    fill_in "Phone", with: @industryprofile.phone
    fill_in "Social", with: @industryprofile.social
    fill_in "Street", with: @industryprofile.street
    fill_in "Team", with: @industryprofile.team
    fill_in "Technic", with: @industryprofile.technic
    click_on "Update Industryprofile"

    assert_text "Industryprofile was successfully updated"
    click_on "Back"
  end

  test "destroying a Industryprofile" do
    visit industryprofiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Industryprofile was successfully destroyed"
  end
end

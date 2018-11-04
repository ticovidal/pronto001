require "application_system_test_case"

class IndustriesTest < ApplicationSystemTestCase
  setup do
    @industry = industries(:one)
  end

  test "visiting the index" do
    visit industries_url
    assert_selector "h1", text: "Industries"
  end

  test "creating a Industry" do
    visit industries_url
    click_on "New Industry"

    fill_in "Profile", with: @industry.profile_id
    fill_in "Team", with: @industry.team
    fill_in "Technic", with: @industry.technic
    click_on "Create Industry"

    assert_text "Industry was successfully created"
    click_on "Back"
  end

  test "updating a Industry" do
    visit industries_url
    click_on "Edit", match: :first

    fill_in "Profile", with: @industry.profile_id
    fill_in "Team", with: @industry.team
    fill_in "Technic", with: @industry.technic
    click_on "Update Industry"

    assert_text "Industry was successfully updated"
    click_on "Back"
  end

  test "destroying a Industry" do
    visit industries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Industry was successfully destroyed"
  end
end

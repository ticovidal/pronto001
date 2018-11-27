require "application_system_test_case"

class ProposesTest < ApplicationSystemTestCase
  setup do
    @propose = proposes(:one)
  end

  test "visiting the index" do
    visit proposes_url
    assert_selector "h1", text: "Proposes"
  end

  test "creating a Propose" do
    visit proposes_url
    click_on "New Propose"

    fill_in "Description", with: @propose.description
    fill_in "Project", with: @propose.project_id
    fill_in "Provider", with: @propose.provider_id
    fill_in "Value", with: @propose.value
    click_on "Create Propose"

    assert_text "Propose was successfully created"
    click_on "Back"
  end

  test "updating a Propose" do
    visit proposes_url
    click_on "Edit", match: :first

    fill_in "Description", with: @propose.description
    fill_in "Project", with: @propose.project_id
    fill_in "Provider", with: @propose.provider_id
    fill_in "Value", with: @propose.value
    click_on "Update Propose"

    assert_text "Propose was successfully updated"
    click_on "Back"
  end

  test "destroying a Propose" do
    visit proposes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Propose was successfully destroyed"
  end
end

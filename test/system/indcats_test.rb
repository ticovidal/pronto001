require "application_system_test_case"

class IndcatsTest < ApplicationSystemTestCase
  setup do
    @indcat = indcats(:one)
  end

  test "visiting the index" do
    visit indcats_url
    assert_selector "h1", text: "Indcats"
  end

  test "creating a Indcat" do
    visit indcats_url
    click_on "New Indcat"

    fill_in "Category", with: @indcat.category_id
    fill_in "Industry", with: @indcat.industry_id
    click_on "Create Indcat"

    assert_text "Indcat was successfully created"
    click_on "Back"
  end

  test "updating a Indcat" do
    visit indcats_url
    click_on "Edit", match: :first

    fill_in "Category", with: @indcat.category_id
    fill_in "Industry", with: @indcat.industry_id
    click_on "Update Indcat"

    assert_text "Indcat was successfully updated"
    click_on "Back"
  end

  test "destroying a Indcat" do
    visit indcats_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Indcat was successfully destroyed"
  end
end

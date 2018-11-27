require "application_system_test_case"

class SubctegoriesTest < ApplicationSystemTestCase
  setup do
    @subctegory = subctegories(:one)
  end

  test "visiting the index" do
    visit subctegories_url
    assert_selector "h1", text: "Subctegories"
  end

  test "creating a Subctegory" do
    visit subctegories_url
    click_on "New Subctegory"

    fill_in "Category", with: @subctegory.category_id
    fill_in "Description", with: @subctegory.description
    fill_in "Name", with: @subctegory.name
    click_on "Create Subctegory"

    assert_text "Subctegory was successfully created"
    click_on "Back"
  end

  test "updating a Subctegory" do
    visit subctegories_url
    click_on "Edit", match: :first

    fill_in "Category", with: @subctegory.category_id
    fill_in "Description", with: @subctegory.description
    fill_in "Name", with: @subctegory.name
    click_on "Update Subctegory"

    assert_text "Subctegory was successfully updated"
    click_on "Back"
  end

  test "destroying a Subctegory" do
    visit subctegories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Subctegory was successfully destroyed"
  end
end

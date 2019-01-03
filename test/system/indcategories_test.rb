require "application_system_test_case"

class IndcategoriesTest < ApplicationSystemTestCase
  setup do
    @indcategory = indcategories(:one)
  end

  test "visiting the index" do
    visit indcategories_url
    assert_selector "h1", text: "Indcategories"
  end

  test "creating a Indcategory" do
    visit indcategories_url
    click_on "New Indcategory"

    fill_in "Description", with: @indcategory.description
    fill_in "Name", with: @indcategory.name
    click_on "Create Indcategory"

    assert_text "Indcategory was successfully created"
    click_on "Back"
  end

  test "updating a Indcategory" do
    visit indcategories_url
    click_on "Edit", match: :first

    fill_in "Description", with: @indcategory.description
    fill_in "Name", with: @indcategory.name
    click_on "Update Indcategory"

    assert_text "Indcategory was successfully updated"
    click_on "Back"
  end

  test "destroying a Indcategory" do
    visit indcategories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Indcategory was successfully destroyed"
  end
end

require "application_system_test_case"

class EnterprisesTest < ApplicationSystemTestCase
  setup do
    @enterprise = enterprises(:one)
  end

  test "visiting the index" do
    visit enterprises_url
    assert_selector "h1", text: "Enterprises"
  end

  test "creating a Enterprise" do
    visit enterprises_url
    click_on "New Enterprise"

    fill_in "Cnpj", with: @enterprise.cnpj
    fill_in "Company", with: @enterprise.company
    fill_in "Enterpriseable", with: @enterprise.enterpriseable_id
    fill_in "Enterpriseable Type", with: @enterprise.enterpriseable_type
    fill_in "Social", with: @enterprise.social
    click_on "Create Enterprise"

    assert_text "Enterprise was successfully created"
    click_on "Back"
  end

  test "updating a Enterprise" do
    visit enterprises_url
    click_on "Edit", match: :first

    fill_in "Cnpj", with: @enterprise.cnpj
    fill_in "Company", with: @enterprise.company
    fill_in "Enterpriseable", with: @enterprise.enterpriseable_id
    fill_in "Enterpriseable Type", with: @enterprise.enterpriseable_type
    fill_in "Social", with: @enterprise.social
    click_on "Update Enterprise"

    assert_text "Enterprise was successfully updated"
    click_on "Back"
  end

  test "destroying a Enterprise" do
    visit enterprises_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Enterprise was successfully destroyed"
  end
end

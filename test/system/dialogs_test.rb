require "application_system_test_case"

class DialogsTest < ApplicationSystemTestCase
  setup do
    @dialog = dialogs(:one)
  end

  test "visiting the index" do
    visit dialogs_url
    assert_selector "h1", text: "Dialogs"
  end

  test "creating a Dialog" do
    visit dialogs_url
    click_on "New Dialog"

    fill_in "Chat", with: @dialog.chat_id
    fill_in "Message", with: @dialog.message
    click_on "Create Dialog"

    assert_text "Dialog was successfully created"
    click_on "Back"
  end

  test "updating a Dialog" do
    visit dialogs_url
    click_on "Edit", match: :first

    fill_in "Chat", with: @dialog.chat_id
    fill_in "Message", with: @dialog.message
    click_on "Update Dialog"

    assert_text "Dialog was successfully updated"
    click_on "Back"
  end

  test "destroying a Dialog" do
    visit dialogs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dialog was successfully destroyed"
  end
end

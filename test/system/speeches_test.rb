require "application_system_test_case"

class SpeechesTest < ApplicationSystemTestCase
  setup do
    @speech = speeches(:one)
  end

  test "visiting the index" do
    visit speeches_url
    assert_selector "h1", text: "Speeches"
  end

  test "creating a Speech" do
    visit speeches_url
    click_on "New Speech"

    fill_in "Message", with: @speech.message
    fill_in "Profile", with: @speech.profile_id
    fill_in "Projec", with: @speech.projec_id
    fill_in "Propose", with: @speech.propose_id
    click_on "Create Speech"

    assert_text "Speech was successfully created"
    click_on "Back"
  end

  test "updating a Speech" do
    visit speeches_url
    click_on "Edit", match: :first

    fill_in "Message", with: @speech.message
    fill_in "Profile", with: @speech.profile_id
    fill_in "Projec", with: @speech.projec_id
    fill_in "Propose", with: @speech.propose_id
    click_on "Update Speech"

    assert_text "Speech was successfully updated"
    click_on "Back"
  end

  test "destroying a Speech" do
    visit speeches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Speech was successfully destroyed"
  end
end

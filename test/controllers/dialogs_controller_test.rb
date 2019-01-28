require 'test_helper'

class DialogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dialog = dialogs(:one)
  end

  test "should get index" do
    get dialogs_url
    assert_response :success
  end

  test "should get new" do
    get new_dialog_url
    assert_response :success
  end

  test "should create dialog" do
    assert_difference('Dialog.count') do
      post dialogs_url, params: { dialog: { chat_id: @dialog.chat_id, message: @dialog.message } }
    end

    assert_redirected_to dialog_url(Dialog.last)
  end

  test "should show dialog" do
    get dialog_url(@dialog)
    assert_response :success
  end

  test "should get edit" do
    get edit_dialog_url(@dialog)
    assert_response :success
  end

  test "should update dialog" do
    patch dialog_url(@dialog), params: { dialog: { chat_id: @dialog.chat_id, message: @dialog.message } }
    assert_redirected_to dialog_url(@dialog)
  end

  test "should destroy dialog" do
    assert_difference('Dialog.count', -1) do
      delete dialog_url(@dialog)
    end

    assert_redirected_to dialogs_url
  end
end

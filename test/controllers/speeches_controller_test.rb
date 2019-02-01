require 'test_helper'

class SpeechesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @speech = speeches(:one)
  end

  test "should get index" do
    get speeches_url
    assert_response :success
  end

  test "should get new" do
    get new_speech_url
    assert_response :success
  end

  test "should create speech" do
    assert_difference('Speech.count') do
      post speeches_url, params: { speech: { message: @speech.message, profile_id: @speech.profile_id, projec_id: @speech.projec_id, propose_id: @speech.propose_id } }
    end

    assert_redirected_to speech_url(Speech.last)
  end

  test "should show speech" do
    get speech_url(@speech)
    assert_response :success
  end

  test "should get edit" do
    get edit_speech_url(@speech)
    assert_response :success
  end

  test "should update speech" do
    patch speech_url(@speech), params: { speech: { message: @speech.message, profile_id: @speech.profile_id, projec_id: @speech.projec_id, propose_id: @speech.propose_id } }
    assert_redirected_to speech_url(@speech)
  end

  test "should destroy speech" do
    assert_difference('Speech.count', -1) do
      delete speech_url(@speech)
    end

    assert_redirected_to speeches_url
  end
end

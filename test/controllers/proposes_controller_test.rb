require 'test_helper'

class ProposesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @propose = proposes(:one)
  end

  test "should get index" do
    get proposes_url
    assert_response :success
  end

  test "should get new" do
    get new_propose_url
    assert_response :success
  end

  test "should create propose" do
    assert_difference('Propose.count') do
      post proposes_url, params: { propose: { description: @propose.description, project_id: @propose.project_id, provider_id: @propose.provider_id, value: @propose.value } }
    end

    assert_redirected_to propose_url(Propose.last)
  end

  test "should show propose" do
    get propose_url(@propose)
    assert_response :success
  end

  test "should get edit" do
    get edit_propose_url(@propose)
    assert_response :success
  end

  test "should update propose" do
    patch propose_url(@propose), params: { propose: { description: @propose.description, project_id: @propose.project_id, provider_id: @propose.provider_id, value: @propose.value } }
    assert_redirected_to propose_url(@propose)
  end

  test "should destroy propose" do
    assert_difference('Propose.count', -1) do
      delete propose_url(@propose)
    end

    assert_redirected_to proposes_url
  end
end

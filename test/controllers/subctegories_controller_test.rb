require 'test_helper'

class SubctegoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subctegory = subctegories(:one)
  end

  test "should get index" do
    get subctegories_url
    assert_response :success
  end

  test "should get new" do
    get new_subctegory_url
    assert_response :success
  end

  test "should create subctegory" do
    assert_difference('Subctegory.count') do
      post subctegories_url, params: { subctegory: { category_id: @subctegory.category_id, description: @subctegory.description, name: @subctegory.name } }
    end

    assert_redirected_to subctegory_url(Subctegory.last)
  end

  test "should show subctegory" do
    get subctegory_url(@subctegory)
    assert_response :success
  end

  test "should get edit" do
    get edit_subctegory_url(@subctegory)
    assert_response :success
  end

  test "should update subctegory" do
    patch subctegory_url(@subctegory), params: { subctegory: { category_id: @subctegory.category_id, description: @subctegory.description, name: @subctegory.name } }
    assert_redirected_to subctegory_url(@subctegory)
  end

  test "should destroy subctegory" do
    assert_difference('Subctegory.count', -1) do
      delete subctegory_url(@subctegory)
    end

    assert_redirected_to subctegories_url
  end
end

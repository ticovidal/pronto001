require 'test_helper'

class IndcategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @indcategory = indcategories(:one)
  end

  test "should get index" do
    get indcategories_url
    assert_response :success
  end

  test "should get new" do
    get new_indcategory_url
    assert_response :success
  end

  test "should create indcategory" do
    assert_difference('Indcategory.count') do
      post indcategories_url, params: { indcategory: { description: @indcategory.description, name: @indcategory.name } }
    end

    assert_redirected_to indcategory_url(Indcategory.last)
  end

  test "should show indcategory" do
    get indcategory_url(@indcategory)
    assert_response :success
  end

  test "should get edit" do
    get edit_indcategory_url(@indcategory)
    assert_response :success
  end

  test "should update indcategory" do
    patch indcategory_url(@indcategory), params: { indcategory: { description: @indcategory.description, name: @indcategory.name } }
    assert_redirected_to indcategory_url(@indcategory)
  end

  test "should destroy indcategory" do
    assert_difference('Indcategory.count', -1) do
      delete indcategory_url(@indcategory)
    end

    assert_redirected_to indcategories_url
  end
end

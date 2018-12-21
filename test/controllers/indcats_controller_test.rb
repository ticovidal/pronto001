require 'test_helper'

class IndcatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @indcat = indcats(:one)
  end

  test "should get index" do
    get indcats_url
    assert_response :success
  end

  test "should get new" do
    get new_indcat_url
    assert_response :success
  end

  test "should create indcat" do
    assert_difference('Indcat.count') do
      post indcats_url, params: { indcat: { category_id: @indcat.category_id, industry_id: @indcat.industry_id } }
    end

    assert_redirected_to indcat_url(Indcat.last)
  end

  test "should show indcat" do
    get indcat_url(@indcat)
    assert_response :success
  end

  test "should get edit" do
    get edit_indcat_url(@indcat)
    assert_response :success
  end

  test "should update indcat" do
    patch indcat_url(@indcat), params: { indcat: { category_id: @indcat.category_id, industry_id: @indcat.industry_id } }
    assert_redirected_to indcat_url(@indcat)
  end

  test "should destroy indcat" do
    assert_difference('Indcat.count', -1) do
      delete indcat_url(@indcat)
    end

    assert_redirected_to indcats_url
  end
end

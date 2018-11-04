require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get industry" do
    get dashboard_industry_url
    assert_response :success
  end

  test "should get provider" do
    get dashboard_provider_url
    assert_response :success
  end

end

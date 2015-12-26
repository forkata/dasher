require 'test_helper'

class DashboardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dashboard = dashboards(:one)
  end

  test "should get index" do
    get dashboards_url
    assert_response :success
  end

  test "should create dashboard" do
    assert_difference('Dashboard.count') do
      post dashboards_url, params: { dashboard: { slug: @dashboard.slug, title: @dashboard.title } }
    end

    assert_response 201
  end

  test "should show dashboard" do
    get dashboard_url(@dashboard)
    assert_response :success
  end

  test "should update dashboard" do
    patch dashboard_url(@dashboard), params: { dashboard: { slug: @dashboard.slug, title: @dashboard.title } }
    assert_response 200
  end

  test "should destroy dashboard" do
    assert_difference('Dashboard.count', -1) do
      delete dashboard_url(@dashboard)
    end

    assert_response 204
  end
end

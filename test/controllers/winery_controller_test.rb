require 'test_helper'

class WineryControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get winery_new_url
    assert_response :success
  end

  test "should get create" do
    get winery_create_url
    assert_response :success
  end

  test "should get edit" do
    get winery_edit_url
    assert_response :success
  end

  test "should get update" do
    get winery_update_url
    assert_response :success
  end

  test "should get delete" do
    get winery_delete_url
    assert_response :success
  end

end

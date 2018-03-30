require 'test_helper'

class StoreFrontControllerTest < ActionDispatch::IntegrationTest
  test "should get all_items" do
    get store_front_all_items_url
    assert_response :success
  end

  test "should get items_by_category" do
    get store_front_items_by_category_url
    assert_response :success
  end

  test "should get items_by_brand" do
    get store_front_items_by_brand_url
    assert_response :success
  end

end

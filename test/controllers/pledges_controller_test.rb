require 'test_helper'

class PledgesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pledges_index_url
    assert_response :success
  end

  test "should get new" do
    get pledges_new_url
    assert_response :success
  end

  test "should get create" do
    get pledges_create_url
    assert_response :success
  end

  test "should get show" do
    get pledges_show_url
    assert_response :success
  end

end

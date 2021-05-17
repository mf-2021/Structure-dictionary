require 'test_helper'

class WritersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get writers_index_url
    assert_response :success
  end

  test "should get show" do
    get writers_show_url
    assert_response :success
  end

  test "should get edit" do
    get writers_edit_url
    assert_response :success
  end

  test "should get update" do
    get writers_update_url
    assert_response :success
  end

  test "should get unsubscribe" do
    get writers_unsubscribe_url
    assert_response :success
  end

  test "should get withdraw" do
    get writers_withdraw_url
    assert_response :success
  end

end

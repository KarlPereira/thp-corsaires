require 'test_helper'

class CorsairsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get corsair_new_url
    assert_response :success
  end

  test "should get show" do
    get corsair_show_url
    assert_response :success
  end

  test "should get edit" do
    get corsair_edit_url
    assert_response :success
  end

  test "should get delete" do
    get corsair_delete_url
    assert_response :success
  end

  test "should get index" do
    get corsair_index_url
    assert_response :success
  end

end

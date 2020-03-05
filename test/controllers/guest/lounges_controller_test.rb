require 'test_helper'

class Guest::LoungesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get guest_lounges_index_url
    assert_response :success
  end

  test "should get show" do
    get guest_lounges_show_url
    assert_response :success
  end

  test "should get new" do
    get guest_lounges_new_url
    assert_response :success
  end

  test "should get edit" do
    get guest_lounges_edit_url
    assert_response :success
  end

  test "should get create" do
    get guest_lounges_create_url
    assert_response :success
  end

  test "should get destroy" do
    get guest_lounges_destroy_url
    assert_response :success
  end

end

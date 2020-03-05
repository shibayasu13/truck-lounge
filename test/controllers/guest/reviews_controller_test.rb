require 'test_helper'

class Guest::ReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get guest_reviews_index_url
    assert_response :success
  end

  test "should get show" do
    get guest_reviews_show_url
    assert_response :success
  end

  test "should get new" do
    get guest_reviews_new_url
    assert_response :success
  end

  test "should get edit" do
    get guest_reviews_edit_url
    assert_response :success
  end

end

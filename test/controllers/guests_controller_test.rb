require 'test_helper'

class GuestsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get guests_show_url
    assert_response :success
  end

  test "should get edit" do
    get guests_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get guests_destroy_url
    assert_response :success
  end

end

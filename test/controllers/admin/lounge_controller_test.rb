require 'test_helper'

class Admin::LoungeControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get admin_lounge_show_url
    assert_response :success
  end

end

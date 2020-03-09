require 'test_helper'

class Admin::GantesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_gantes_new_url
    assert_response :success
  end

end

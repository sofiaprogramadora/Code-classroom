require 'test_helper'

class RControllerTest < ActionDispatch::IntegrationTest
  test "should get Main" do
    get r_Main_url
    assert_response :success
  end

end

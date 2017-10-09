require 'test_helper'

class CControllerTest < ActionDispatch::IntegrationTest
  test "should get Main" do
    get c_Main_url
    assert_response :success
  end

end

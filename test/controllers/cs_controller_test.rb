require 'test_helper'

class CsControllerTest < ActionDispatch::IntegrationTest
  test "should get Main" do
    get cs_Main_url
    assert_response :success
  end

end

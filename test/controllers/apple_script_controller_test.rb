require 'test_helper'

class AppleScriptControllerTest < ActionDispatch::IntegrationTest
  test "should get Main" do
    get apple_script_Main_url
    assert_response :success
  end

end

require 'test_helper'

class LiveScriptControllerTest < ActionDispatch::IntegrationTest
  test "should get Main" do
    get live_script_Main_url
    assert_response :success
  end

end

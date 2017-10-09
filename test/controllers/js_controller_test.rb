require 'test_helper'

class JsControllerTest < ActionDispatch::IntegrationTest
  test "should get Main" do
    get js_Main_url
    assert_response :success
  end

end

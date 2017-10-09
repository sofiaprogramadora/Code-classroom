require 'test_helper'

class PugJsControllerTest < ActionDispatch::IntegrationTest
  test "should get Main" do
    get pug_js_Main_url
    assert_response :success
  end

end

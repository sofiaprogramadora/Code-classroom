require 'test_helper'

class NodeJsControllerTest < ActionDispatch::IntegrationTest
  test "should get Main" do
    get node_js_Main_url
    assert_response :success
  end

end

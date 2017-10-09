require 'test_helper'

class JavaControllerTest < ActionDispatch::IntegrationTest
  test "should get Main" do
    get java_Main_url
    assert_response :success
  end

end

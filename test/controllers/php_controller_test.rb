require 'test_helper'

class PhpControllerTest < ActionDispatch::IntegrationTest
  test "should get Main" do
    get php_Main_url
    assert_response :success
  end

end

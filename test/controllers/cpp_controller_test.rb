require 'test_helper'

class CppControllerTest < ActionDispatch::IntegrationTest
  test "should get Main" do
    get cpp_Main_url
    assert_response :success
  end

end

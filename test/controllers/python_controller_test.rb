require 'test_helper'

class PythonControllerTest < ActionDispatch::IntegrationTest
  test "should get Main" do
    get python_Main_url
    assert_response :success
  end

end

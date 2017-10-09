require 'test_helper'

class BasicControllerTest < ActionDispatch::IntegrationTest
  test "should get Main" do
    get basic_Main_url
    assert_response :success
  end

end

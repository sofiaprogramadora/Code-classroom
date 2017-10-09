require 'test_helper'

class GoControllerTest < ActionDispatch::IntegrationTest
  test "should get Main" do
    get go_Main_url
    assert_response :success
  end

end

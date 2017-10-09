require 'test_helper'

class BashControllerTest < ActionDispatch::IntegrationTest
  test "should get Main" do
    get bash_Main_url
    assert_response :success
  end

end

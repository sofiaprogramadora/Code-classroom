require 'test_helper'

class CssControllerTest < ActionDispatch::IntegrationTest
  test "should get Main" do
    get css_Main_url
    assert_response :success
  end

end

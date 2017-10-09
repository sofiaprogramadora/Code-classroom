require 'test_helper'

class HtmlControllerTest < ActionDispatch::IntegrationTest
  test "should get Main" do
    get html_Main_url
    assert_response :success
  end

end

require 'test_helper'

class RustControllerTest < ActionDispatch::IntegrationTest
  test "should get Main" do
    get rust_Main_url
    assert_response :success
  end

end

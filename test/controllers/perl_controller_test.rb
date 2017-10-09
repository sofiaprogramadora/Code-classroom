require 'test_helper'

class PerlControllerTest < ActionDispatch::IntegrationTest
  test "should get Main" do
    get perl_Main_url
    assert_response :success
  end

end

require 'test_helper'

class GosuRubyControllerTest < ActionDispatch::IntegrationTest
  test "should get Main" do
    get gosu_ruby_Main_url
    assert_response :success
  end

end

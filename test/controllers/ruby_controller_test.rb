require 'test_helper'

class RubyControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get ruby_main_url
    assert_response :success
  end

  test "should get c1p1" do
    get ruby_c1p1_url
    assert_response :success
  end

end

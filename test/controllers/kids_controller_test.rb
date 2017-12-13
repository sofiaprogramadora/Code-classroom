require 'test_helper'

class KidsControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get kids_main_url
    assert_response :success
  end

  test "should get javascript" do
    get kids_javascript_url
    assert_response :success
  end

  test "should get python" do
    get kids_python_url
    assert_response :success
  end

  test "should get ruby" do
    get kids_ruby_url
    assert_response :success
  end

  test "should get html" do
    get kids_html_url
    assert_response :success
  end

  test "should get css" do
    get kids_css_url
    assert_response :success
  end

end

require 'test_helper'

class PdfsControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get pdfs_main_url
    assert_response :success
  end

  test "should get ruby" do
    get pdfs_ruby_url
    assert_response :success
  end

  test "should get php" do
    get pdfs_php_url
    assert_response :success
  end

end

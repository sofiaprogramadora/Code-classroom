require 'test_helper'

class DartControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dart_index_url
    assert_response :success
  end

  test "should get final_test" do
    get dart_final_test_url
    assert_response :success
  end

end

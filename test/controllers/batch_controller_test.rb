require 'test_helper'

class BatchControllerTest < ActionDispatch::IntegrationTest
  test "should get Main" do
    get batch_Main_url
    assert_response :success
  end

end

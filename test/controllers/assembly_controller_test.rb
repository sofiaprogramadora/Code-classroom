require 'test_helper'

class AssemblyControllerTest < ActionDispatch::IntegrationTest
  test "should get Main" do
    get assembly_Main_url
    assert_response :success
  end

end

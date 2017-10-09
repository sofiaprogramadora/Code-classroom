require 'test_helper'

class FortranControllerTest < ActionDispatch::IntegrationTest
  test "should get Main" do
    get fortran_Main_url
    assert_response :success
  end

end

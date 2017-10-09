require 'test_helper'

class CssTutorialControllerTest < ActionDispatch::IntegrationTest
  test "should get p1_1" do
    get css_tutorial_p1_1_url
    assert_response :success
  end

  test "should get p1_2" do
    get css_tutorial_p1_2_url
    assert_response :success
  end

  test "should get p1_3" do
    get css_tutorial_p1_3_url
    assert_response :success
  end

  test "should get p1_4" do
    get css_tutorial_p1_4_url
    assert_response :success
  end

  test "should get p1_5" do
    get css_tutorial_p1_5_url
    assert_response :success
  end

  test "should get test1" do
    get css_tutorial_test1_url
    assert_response :success
  end

end

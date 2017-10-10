require 'test_helper'

class TutorialMakerAdminsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tutorial_maker_admin = tutorial_maker_admins(:one)
  end

  test "should get index" do
    get tutorial_maker_admins_url
    assert_response :success
  end

  test "should get new" do
    get new_tutorial_maker_admin_url
    assert_response :success
  end

  test "should create tutorial_maker_admin" do
    assert_difference('TutorialMakerAdmin.count') do
      post tutorial_maker_admins_url, params: { tutorial_maker_admin: { code: @tutorial_maker_admin.code, content: @tutorial_maker_admin.content, file: @tutorial_maker_admin.file, image: @tutorial_maker_admin.image, language: @tutorial_maker_admin.language, name: @tutorial_maker_admin.name } }
    end

    assert_redirected_to tutorial_maker_admin_url(TutorialMakerAdmin.last)
  end

  test "should show tutorial_maker_admin" do
    get tutorial_maker_admin_url(@tutorial_maker_admin)
    assert_response :success
  end

  test "should get edit" do
    get edit_tutorial_maker_admin_url(@tutorial_maker_admin)
    assert_response :success
  end

  test "should update tutorial_maker_admin" do
    patch tutorial_maker_admin_url(@tutorial_maker_admin), params: { tutorial_maker_admin: { code: @tutorial_maker_admin.code, content: @tutorial_maker_admin.content, file: @tutorial_maker_admin.file, image: @tutorial_maker_admin.image, language: @tutorial_maker_admin.language, name: @tutorial_maker_admin.name } }
    assert_redirected_to tutorial_maker_admin_url(@tutorial_maker_admin)
  end

  test "should destroy tutorial_maker_admin" do
    assert_difference('TutorialMakerAdmin.count', -1) do
      delete tutorial_maker_admin_url(@tutorial_maker_admin)
    end

    assert_redirected_to tutorial_maker_admins_url
  end
end

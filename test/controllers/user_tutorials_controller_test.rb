require 'test_helper'

class UserTutorialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_tutorial = user_tutorials(:one)
  end

  test "should get index" do
    get user_tutorials_url
    assert_response :success
  end

  test "should get new" do
    get new_user_tutorial_url
    assert_response :success
  end

  test "should create user_tutorial" do
    assert_difference('UserTutorial.count') do
      post user_tutorials_url, params: { user_tutorial: { code: @user_tutorial.code, content: @user_tutorial.content, embed: @user_tutorial.embed, files: @user_tutorial.files, goal: @user_tutorial.goal, images: @user_tutorial.images, name: @user_tutorial.name } }
    end

    assert_redirected_to user_tutorial_url(UserTutorial.last)
  end

  test "should show user_tutorial" do
    get user_tutorial_url(@user_tutorial)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_tutorial_url(@user_tutorial)
    assert_response :success
  end

  test "should update user_tutorial" do
    patch user_tutorial_url(@user_tutorial), params: { user_tutorial: { code: @user_tutorial.code, content: @user_tutorial.content, embed: @user_tutorial.embed, files: @user_tutorial.files, goal: @user_tutorial.goal, images: @user_tutorial.images, name: @user_tutorial.name } }
    assert_redirected_to user_tutorial_url(@user_tutorial)
  end

  test "should destroy user_tutorial" do
    assert_difference('UserTutorial.count', -1) do
      delete user_tutorial_url(@user_tutorial)
    end

    assert_redirected_to user_tutorials_url
  end
end

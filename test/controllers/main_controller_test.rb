require 'test_helper'

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get main_index_url
    assert_response :success
  end

  test "should get trending" do
    get main_trending_url
    assert_response :success
  end

  test "should get tutorials" do
    get main_tutorials_url
    assert_response :success
  end

  test "should get download" do
    get main_download_url
    assert_response :success
  end

  test "should get contact" do
    get main_contact_url
    assert_response :success
  end

  test "should get popular" do
    get main_popular_url
    assert_response :success
  end

  test "should get alsoVisit" do
    get main_alsoVisit_url
    assert_response :success
  end

  test "should get explore" do
    get main_explore_url
    assert_response :success
  end

  test "should get about" do
    get main_about_url
    assert_response :success
  end

  test "should get suggestions" do
    get main_suggestions_url
    assert_response :success
  end

  test "should get help" do
    get main_help_url
    assert_response :success
  end

  test "should get share" do
    get main_share_url
    assert_response :success
  end

end

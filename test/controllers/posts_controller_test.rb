require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get bash_9_very_useful_commands" do
    get posts_bash_9_very_useful_commands_url
    assert_response :success
  end

end

require 'test_helper'

class AppGroupControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get app_group_index_url
    assert_response :success
  end

end

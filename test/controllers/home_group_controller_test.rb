require 'test_helper'

class HomeGroupControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_group_index_url
    assert_response :success
  end

end

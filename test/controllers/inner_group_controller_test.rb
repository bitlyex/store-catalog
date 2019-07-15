require 'test_helper'

class InnerGroupControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get inner_group_index_url
    assert_response :success
  end

end

require 'test_helper'

class RanksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ranks_index_url
    assert_response :success
  end

  test "should get field" do
    get ranks_field_url
    assert_response :success
  end

end

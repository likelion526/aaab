require 'test_helper'

class ChecksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get checks_index_url
    assert_response :success
  end

  test "should get monthly" do
    get checks_monthly_url
    assert_response :success
  end

  test "should get choice" do
    get checks_choice_url
    assert_response :success
  end

end

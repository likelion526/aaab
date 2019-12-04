require 'test_helper'

class HabitsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get habits_create_url
    assert_response :success
  end

  test "should get destroy" do
    get habits_destroy_url
    assert_response :success
  end

  test "should get update" do
    get habits_update_url
    assert_response :success
  end

end

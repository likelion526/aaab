require 'test_helper'

class GoalsControllerTest < ActionDispatch::IntegrationTest
  test "should get choice" do
    get goals_choice_url
    assert_response :success
  end

  test "should get receiver" do
    get goals_receiver_url
    assert_response :success
  end

end

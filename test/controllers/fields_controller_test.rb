require 'test_helper'

class FieldsControllerTest < ActionDispatch::IntegrationTest
  test "should get choice" do
    get fields_choice_url
    assert_response :success
  end

  test "should get edit" do
    get fields_edit_url
    assert_response :success
  end

  test "should get index" do
    get fields_index_url
    assert_response :success
  end

  test "should get main" do
    get fields_main_url
    assert_response :success
  end

  test "should get new" do
    get fields_new_url
    assert_response :success
  end

  test "should get receive" do
    get fields_receive_url
    assert_response :success
  end

  test "should get show" do
    get fields_show_url
    assert_response :success
  end

end

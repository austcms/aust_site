require 'test_helper'

class AustControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get why" do
    get :why
    assert_response :success
  end

  test "should get what" do
    get :what
    assert_response :success
  end

  test "should get features" do
    get :features
    assert_response :success
  end

end

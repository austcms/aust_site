require 'test_helper'

class BookControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get intro" do
    get :intro
    assert_response :success
  end

  test "should get chapter_one" do
    get :chapter_one
    assert_response :success
  end

  test "should get chapter_two" do
    get :chapter_two
    assert_response :success
  end

  test "should get chapter_three" do
    get :chapter_three
    assert_response :success
  end

  test "should get chapter_four" do
    get :chapter_four
    assert_response :success
  end

  test "should get chapter_five" do
    get :chapter_five
    assert_response :success
  end

  test "should get chapter_six" do
    get :chapter_six
    assert_response :success
  end

  test "should get chapter_seven" do
    get :chapter_seven
    assert_response :success
  end

  test "should get chapter_nine" do
    get :chapter_nine
    assert_response :success
  end

end

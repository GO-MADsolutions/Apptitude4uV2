require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get header" do
    get :header
    assert_response :success
  end

  test "should get footer" do
    get :footer
    assert_response :success
  end

  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get authors" do
    get :authors
    assert_response :success
  end

  test "should get aboutus" do
    get :aboutus
    assert_response :success
  end

end

require 'test_helper'

class IntervalsControllerTest < ActionController::TestCase
  setup do
    @interval = intervals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:intervals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create interval" do
    assert_difference('Interval.count') do
      post :create, interval: @interval.attributes
    end

    assert_redirected_to interval_path(assigns(:interval))
  end

  test "should show interval" do
    get :show, id: @interval.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @interval.to_param
    assert_response :success
  end

  test "should update interval" do
    put :update, id: @interval.to_param, interval: @interval.attributes
    assert_redirected_to interval_path(assigns(:interval))
  end

  test "should destroy interval" do
    assert_difference('Interval.count', -1) do
      delete :destroy, id: @interval.to_param
    end

    assert_redirected_to intervals_path
  end
end

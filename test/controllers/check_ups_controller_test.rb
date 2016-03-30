require 'test_helper'

class CheckUpsControllerTest < ActionController::TestCase
  setup do
    @check_up = check_ups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:check_ups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create check_up" do
    assert_difference('CheckUp.count') do
      post :create, check_up: { date: @check_up.date }
    end

    assert_redirected_to check_up_path(assigns(:check_up))
  end

  test "should show check_up" do
    get :show, id: @check_up
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @check_up
    assert_response :success
  end

  test "should update check_up" do
    patch :update, id: @check_up, check_up: { date: @check_up.date }
    assert_redirected_to check_up_path(assigns(:check_up))
  end

  test "should destroy check_up" do
    assert_difference('CheckUp.count', -1) do
      delete :destroy, id: @check_up
    end

    assert_redirected_to check_ups_path
  end
end

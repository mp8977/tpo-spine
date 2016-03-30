require 'test_helper'

class MeasurementHomesControllerTest < ActionController::TestCase
  setup do
    @measurement_home = measurement_homes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:measurement_homes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create measurement_home" do
    assert_difference('MeasurementHome.count') do
      post :create, measurement_home: {  }
    end

    assert_redirected_to measurement_home_path(assigns(:measurement_home))
  end

  test "should show measurement_home" do
    get :show, id: @measurement_home
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @measurement_home
    assert_response :success
  end

  test "should update measurement_home" do
    patch :update, id: @measurement_home, measurement_home: {  }
    assert_redirected_to measurement_home_path(assigns(:measurement_home))
  end

  test "should destroy measurement_home" do
    assert_difference('MeasurementHome.count', -1) do
      delete :destroy, id: @measurement_home
    end

    assert_redirected_to measurement_homes_path
  end
end

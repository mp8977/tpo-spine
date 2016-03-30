require 'test_helper'

class PartMeasurementsControllerTest < ActionController::TestCase
  setup do
    @part_measurement = part_measurements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:part_measurements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create part_measurement" do
    assert_difference('PartMeasurement.count') do
      post :create, part_measurement: { name: @part_measurement.name, unit: @part_measurement.unit, value: @part_measurement.value }
    end

    assert_redirected_to part_measurement_path(assigns(:part_measurement))
  end

  test "should show part_measurement" do
    get :show, id: @part_measurement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @part_measurement
    assert_response :success
  end

  test "should update part_measurement" do
    patch :update, id: @part_measurement, part_measurement: { name: @part_measurement.name, unit: @part_measurement.unit, value: @part_measurement.value }
    assert_redirected_to part_measurement_path(assigns(:part_measurement))
  end

  test "should destroy part_measurement" do
    assert_difference('PartMeasurement.count', -1) do
      delete :destroy, id: @part_measurement
    end

    assert_redirected_to part_measurements_path
  end
end

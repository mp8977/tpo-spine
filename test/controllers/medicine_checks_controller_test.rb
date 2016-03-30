require 'test_helper'

class MedicineChecksControllerTest < ActionController::TestCase
  setup do
    @medicine_check = medicine_checks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medicine_checks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medicine_check" do
    assert_difference('MedicineCheck.count') do
      post :create, medicine_check: { name: @medicine_check.name }
    end

    assert_redirected_to medicine_check_path(assigns(:medicine_check))
  end

  test "should show medicine_check" do
    get :show, id: @medicine_check
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medicine_check
    assert_response :success
  end

  test "should update medicine_check" do
    patch :update, id: @medicine_check, medicine_check: { name: @medicine_check.name }
    assert_redirected_to medicine_check_path(assigns(:medicine_check))
  end

  test "should destroy medicine_check" do
    assert_difference('MedicineCheck.count', -1) do
      delete :destroy, id: @medicine_check
    end

    assert_redirected_to medicine_checks_path
  end
end

require 'test_helper'

class DoctorHasNursesControllerTest < ActionController::TestCase
  setup do
    @doctor_has_nurse = doctor_has_nurses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doctor_has_nurses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doctor_has_nurse" do
    assert_difference('DoctorHasNurse.count') do
      post :create, doctor_has_nurse: {  }
    end

    assert_redirected_to doctor_has_nurse_path(assigns(:doctor_has_nurse))
  end

  test "should show doctor_has_nurse" do
    get :show, id: @doctor_has_nurse
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doctor_has_nurse
    assert_response :success
  end

  test "should update doctor_has_nurse" do
    patch :update, id: @doctor_has_nurse, doctor_has_nurse: {  }
    assert_redirected_to doctor_has_nurse_path(assigns(:doctor_has_nurse))
  end

  test "should destroy doctor_has_nurse" do
    assert_difference('DoctorHasNurse.count', -1) do
      delete :destroy, id: @doctor_has_nurse
    end

    assert_redirected_to doctor_has_nurses_path
  end
end

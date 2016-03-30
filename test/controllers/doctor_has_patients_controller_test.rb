require 'test_helper'

class DoctorHasPatientsControllerTest < ActionController::TestCase
  setup do
    @doctor_has_patient = doctor_has_patients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doctor_has_patients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doctor_has_patient" do
    assert_difference('DoctorHasPatient.count') do
      post :create, doctor_has_patient: {  }
    end

    assert_redirected_to doctor_has_patient_path(assigns(:doctor_has_patient))
  end

  test "should show doctor_has_patient" do
    get :show, id: @doctor_has_patient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doctor_has_patient
    assert_response :success
  end

  test "should update doctor_has_patient" do
    patch :update, id: @doctor_has_patient, doctor_has_patient: {  }
    assert_redirected_to doctor_has_patient_path(assigns(:doctor_has_patient))
  end

  test "should destroy doctor_has_patient" do
    assert_difference('DoctorHasPatient.count', -1) do
      delete :destroy, id: @doctor_has_patient
    end

    assert_redirected_to doctor_has_patients_path
  end
end

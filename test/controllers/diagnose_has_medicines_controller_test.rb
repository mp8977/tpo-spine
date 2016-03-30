require 'test_helper'

class DiagnoseHasMedicinesControllerTest < ActionController::TestCase
  setup do
    @diagnose_has_medicine = diagnose_has_medicines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diagnose_has_medicines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diagnose_has_medicine" do
    assert_difference('DiagnoseHasMedicine.count') do
      post :create, diagnose_has_medicine: {  }
    end

    assert_redirected_to diagnose_has_medicine_path(assigns(:diagnose_has_medicine))
  end

  test "should show diagnose_has_medicine" do
    get :show, id: @diagnose_has_medicine
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @diagnose_has_medicine
    assert_response :success
  end

  test "should update diagnose_has_medicine" do
    patch :update, id: @diagnose_has_medicine, diagnose_has_medicine: {  }
    assert_redirected_to diagnose_has_medicine_path(assigns(:diagnose_has_medicine))
  end

  test "should destroy diagnose_has_medicine" do
    assert_difference('DiagnoseHasMedicine.count', -1) do
      delete :destroy, id: @diagnose_has_medicine
    end

    assert_redirected_to diagnose_has_medicines_path
  end
end

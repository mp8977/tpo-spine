require 'test_helper'

class DietChecksControllerTest < ActionController::TestCase
  setup do
    @diet_check = diet_checks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diet_checks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diet_check" do
    assert_difference('DietCheck.count') do
      post :create, diet_check: { name: @diet_check.name }
    end

    assert_redirected_to diet_check_path(assigns(:diet_check))
  end

  test "should show diet_check" do
    get :show, id: @diet_check
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @diet_check
    assert_response :success
  end

  test "should update diet_check" do
    patch :update, id: @diet_check, diet_check: { name: @diet_check.name }
    assert_redirected_to diet_check_path(assigns(:diet_check))
  end

  test "should destroy diet_check" do
    assert_difference('DietCheck.count', -1) do
      delete :destroy, id: @diet_check
    end

    assert_redirected_to diet_checks_path
  end
end

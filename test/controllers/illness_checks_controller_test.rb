require 'test_helper'

class IllnessChecksControllerTest < ActionController::TestCase
  setup do
    @illness_check = illness_checks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:illness_checks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create illness_check" do
    assert_difference('IllnessCheck.count') do
      post :create, illness_check: { name: @illness_check.name }
    end

    assert_redirected_to illness_check_path(assigns(:illness_check))
  end

  test "should show illness_check" do
    get :show, id: @illness_check
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @illness_check
    assert_response :success
  end

  test "should update illness_check" do
    patch :update, id: @illness_check, illness_check: { name: @illness_check.name }
    assert_redirected_to illness_check_path(assigns(:illness_check))
  end

  test "should destroy illness_check" do
    assert_difference('IllnessCheck.count', -1) do
      delete :destroy, id: @illness_check
    end

    assert_redirected_to illness_checks_path
  end
end

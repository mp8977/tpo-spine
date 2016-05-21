require 'test_helper'

class MeasurementCategoriesControllerTest < ActionController::TestCase
  setup do
    @measurement_category = measurement_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:measurement_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create measurement_category" do
    assert_difference('MeasurementCategory.count') do
      post :create, measurement_category: { elements: @measurement_category.elements, name: @measurement_category.name }
    end

    assert_redirected_to measurement_category_path(assigns(:measurement_category))
  end

  test "should show measurement_category" do
    get :show, id: @measurement_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @measurement_category
    assert_response :success
  end

  test "should update measurement_category" do
    patch :update, id: @measurement_category, measurement_category: { elements: @measurement_category.elements, name: @measurement_category.name }
    assert_redirected_to measurement_category_path(assigns(:measurement_category))
  end

  test "should destroy measurement_category" do
    assert_difference('MeasurementCategory.count', -1) do
      delete :destroy, id: @measurement_category
    end

    assert_redirected_to measurement_categories_path
  end
end

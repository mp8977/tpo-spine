require 'test_helper'

class MeasurementDocsControllerTest < ActionController::TestCase
  setup do
    @measurement_doc = measurement_docs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:measurement_docs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create measurement_doc" do
    assert_difference('MeasurementDoc.count') do
      post :create, measurement_doc: {  }
    end

    assert_redirected_to measurement_doc_path(assigns(:measurement_doc))
  end

  test "should show measurement_doc" do
    get :show, id: @measurement_doc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @measurement_doc
    assert_response :success
  end

  test "should update measurement_doc" do
    patch :update, id: @measurement_doc, measurement_doc: {  }
    assert_redirected_to measurement_doc_path(assigns(:measurement_doc))
  end

  test "should destroy measurement_doc" do
    assert_difference('MeasurementDoc.count', -1) do
      delete :destroy, id: @measurement_doc
    end

    assert_redirected_to measurement_docs_path
  end
end

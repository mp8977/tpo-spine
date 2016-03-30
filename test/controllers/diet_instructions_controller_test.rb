require 'test_helper'

class DietInstructionsControllerTest < ActionController::TestCase
  setup do
    @diet_instruction = diet_instructions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diet_instructions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diet_instruction" do
    assert_difference('DietInstruction.count') do
      post :create, diet_instruction: { url: @diet_instruction.url }
    end

    assert_redirected_to diet_instruction_path(assigns(:diet_instruction))
  end

  test "should show diet_instruction" do
    get :show, id: @diet_instruction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @diet_instruction
    assert_response :success
  end

  test "should update diet_instruction" do
    patch :update, id: @diet_instruction, diet_instruction: { url: @diet_instruction.url }
    assert_redirected_to diet_instruction_path(assigns(:diet_instruction))
  end

  test "should destroy diet_instruction" do
    assert_difference('DietInstruction.count', -1) do
      delete :destroy, id: @diet_instruction
    end

    assert_redirected_to diet_instructions_path
  end
end

require 'test_helper'

class MedicineInstructionsControllerTest < ActionController::TestCase
  setup do
    @medicine_instruction = medicine_instructions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medicine_instructions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medicine_instruction" do
    assert_difference('MedicineInstruction.count') do
      post :create, medicine_instruction: { url: @medicine_instruction.url }
    end

    assert_redirected_to medicine_instruction_path(assigns(:medicine_instruction))
  end

  test "should show medicine_instruction" do
    get :show, id: @medicine_instruction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medicine_instruction
    assert_response :success
  end

  test "should update medicine_instruction" do
    patch :update, id: @medicine_instruction, medicine_instruction: { url: @medicine_instruction.url }
    assert_redirected_to medicine_instruction_path(assigns(:medicine_instruction))
  end

  test "should destroy medicine_instruction" do
    assert_difference('MedicineInstruction.count', -1) do
      delete :destroy, id: @medicine_instruction
    end

    assert_redirected_to medicine_instructions_path
  end
end

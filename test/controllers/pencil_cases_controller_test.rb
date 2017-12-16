require 'test_helper'

class PencilCasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pencil_case = pencil_cases(:one)
  end

  test "should get index" do
    get pencil_cases_url
    assert_response :success
  end

  test "should get new" do
    get new_pencil_case_url
    assert_response :success
  end

  test "should create pencil_case" do
    assert_difference('PencilCase.count') do
      post pencil_cases_url, params: { pencil_case: { description: @pencil_case.description, pencil_case_id: @pencil_case.pencil_case_id, price: @pencil_case.price } }
    end

    assert_redirected_to pencil_case_url(PencilCase.last)
  end

  test "should show pencil_case" do
    get pencil_case_url(@pencil_case)
    assert_response :success
  end

  test "should get edit" do
    get edit_pencil_case_url(@pencil_case)
    assert_response :success
  end

  test "should update pencil_case" do
    patch pencil_case_url(@pencil_case), params: { pencil_case: { description: @pencil_case.description, pencil_case_id: @pencil_case.pencil_case_id, price: @pencil_case.price } }
    assert_redirected_to pencil_case_url(@pencil_case)
  end

  test "should destroy pencil_case" do
    assert_difference('PencilCase.count', -1) do
      delete pencil_case_url(@pencil_case)
    end

    assert_redirected_to pencil_cases_url
  end
end

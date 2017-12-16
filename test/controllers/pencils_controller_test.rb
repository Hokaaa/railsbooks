require 'test_helper'

class PencilsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pencil = pencils(:one)
  end

  test "should get index" do
    get pencils_url
    assert_response :success
  end

  test "should get new" do
    get new_pencil_url
    assert_response :success
  end

  test "should create pencil" do
    assert_difference('Pencil.count') do
      post pencils_url, params: { pencil: { description: @pencil.description, pencil_id: @pencil.pencil_id, price: @pencil.price } }
    end

    assert_redirected_to pencil_url(Pencil.last)
  end

  test "should show pencil" do
    get pencil_url(@pencil)
    assert_response :success
  end

  test "should get edit" do
    get edit_pencil_url(@pencil)
    assert_response :success
  end

  test "should update pencil" do
    patch pencil_url(@pencil), params: { pencil: { description: @pencil.description, pencil_id: @pencil.pencil_id, price: @pencil.price } }
    assert_redirected_to pencil_url(@pencil)
  end

  test "should destroy pencil" do
    assert_difference('Pencil.count', -1) do
      delete pencil_url(@pencil)
    end

    assert_redirected_to pencils_url
  end
end

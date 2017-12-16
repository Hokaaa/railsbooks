require 'test_helper'

class ErasersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @eraser = erasers(:one)
  end

  test "should get index" do
    get erasers_url
    assert_response :success
  end

  test "should get new" do
    get new_eraser_url
    assert_response :success
  end

  test "should create eraser" do
    assert_difference('Eraser.count') do
      post erasers_url, params: { eraser: { description: @eraser.description, eraser_id: @eraser.eraser_id, price: @eraser.price } }
    end

    assert_redirected_to eraser_url(Eraser.last)
  end

  test "should show eraser" do
    get eraser_url(@eraser)
    assert_response :success
  end

  test "should get edit" do
    get edit_eraser_url(@eraser)
    assert_response :success
  end

  test "should update eraser" do
    patch eraser_url(@eraser), params: { eraser: { description: @eraser.description, eraser_id: @eraser.eraser_id, price: @eraser.price } }
    assert_redirected_to eraser_url(@eraser)
  end

  test "should destroy eraser" do
    assert_difference('Eraser.count', -1) do
      delete eraser_url(@eraser)
    end

    assert_redirected_to erasers_url
  end
end

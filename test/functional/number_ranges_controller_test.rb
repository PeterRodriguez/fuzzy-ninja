require 'test_helper'

class NumberRangesControllerTest < ActionController::TestCase
  setup do
    @number_range = number_ranges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:number_ranges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create number_range" do
    assert_difference('NumberRange.count') do
      post :create, number_range: { client_id: @number_range.client_id, range_end: @number_range.range_end, range_start: @number_range.range_start }
    end

    assert_redirected_to number_range_path(assigns(:number_range))
  end

  test "should show number_range" do
    get :show, id: @number_range
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @number_range
    assert_response :success
  end

  test "should update number_range" do
    put :update, id: @number_range, number_range: { client_id: @number_range.client_id, range_end: @number_range.range_end, range_start: @number_range.range_start }
    assert_redirected_to number_range_path(assigns(:number_range))
  end

  test "should destroy number_range" do
    assert_difference('NumberRange.count', -1) do
      delete :destroy, id: @number_range
    end

    assert_redirected_to number_ranges_path
  end
end

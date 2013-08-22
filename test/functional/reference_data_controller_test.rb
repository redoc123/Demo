require 'test_helper'

class ReferenceDataControllerTest < ActionController::TestCase
  setup do
    @reference_datum = reference_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reference_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reference_datum" do
    assert_difference('ReferenceDatum.count') do
      post :create, reference_datum: { code: @reference_datum.code, codeId: @reference_datum.codeId, codeSet: @reference_datum.codeSet, sortIndex: @reference_datum.sortIndex }
    end

    assert_redirected_to reference_datum_path(assigns(:reference_datum))
  end

  test "should show reference_datum" do
    get :show, id: @reference_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reference_datum
    assert_response :success
  end

  test "should update reference_datum" do
    put :update, id: @reference_datum, reference_datum: { code: @reference_datum.code, codeId: @reference_datum.codeId, codeSet: @reference_datum.codeSet, sortIndex: @reference_datum.sortIndex }
    assert_redirected_to reference_datum_path(assigns(:reference_datum))
  end

  test "should destroy reference_datum" do
    assert_difference('ReferenceDatum.count', -1) do
      delete :destroy, id: @reference_datum
    end

    assert_redirected_to reference_data_path
  end
end

require 'test_helper'

class AbcapsControllerTest < ActionController::TestCase
  setup do
    @abcap = abcaps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:abcaps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create abcap" do
    assert_difference('Abcap.count') do
      post :create, abcap: { address: @abcap.address, name: @abcap.name }
    end

    assert_redirected_to abcap_path(assigns(:abcap))
  end

  test "should show abcap" do
    get :show, id: @abcap
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @abcap
    assert_response :success
  end

  test "should update abcap" do
    patch :update, id: @abcap, abcap: { address: @abcap.address, name: @abcap.name }
    assert_redirected_to abcap_path(assigns(:abcap))
  end

  test "should destroy abcap" do
    assert_difference('Abcap.count', -1) do
      delete :destroy, id: @abcap
    end

    assert_redirected_to abcaps_path
  end
end

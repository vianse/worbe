require 'test_helper'

class DgsControllerTest < ActionController::TestCase
  setup do
    @dg = dgs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dgs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dg" do
    assert_difference('Dg.count') do
      post :create, dg: { address: @dg.address, age: @dg.age, datebirthday: @dg.datebirthday, email: @dg.email, name: @dg.name, phone1: @dg.phone1, phone2: @dg.phone2 }
    end

    assert_redirected_to dg_path(assigns(:dg))
  end

  test "should show dg" do
    get :show, id: @dg
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dg
    assert_response :success
  end

  test "should update dg" do
    patch :update, id: @dg, dg: { address: @dg.address, age: @dg.age, datebirthday: @dg.datebirthday, email: @dg.email, name: @dg.name, phone1: @dg.phone1, phone2: @dg.phone2 }
    assert_redirected_to dg_path(assigns(:dg))
  end

  test "should destroy dg" do
    assert_difference('Dg.count', -1) do
      delete :destroy, id: @dg
    end

    assert_redirected_to dgs_path
  end
end

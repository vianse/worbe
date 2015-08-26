require 'test_helper'

class VacantesControllerTest < ActionController::TestCase
  setup do
    @vacante = vacantes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vacantes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vacante" do
    assert_difference('Vacante.count') do
      post :create, vacante: { business: @vacante.business, business_id: @vacante.business_id, description: @vacante.description, name: @vacante.name }
    end

    assert_redirected_to vacante_path(assigns(:vacante))
  end

  test "should show vacante" do
    get :show, id: @vacante
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vacante
    assert_response :success
  end

  test "should update vacante" do
    patch :update, id: @vacante, vacante: { business: @vacante.business, business_id: @vacante.business_id, description: @vacante.description, name: @vacante.name }
    assert_redirected_to vacante_path(assigns(:vacante))
  end

  test "should destroy vacante" do
    assert_difference('Vacante.count', -1) do
      delete :destroy, id: @vacante
    end

    assert_redirected_to vacantes_path
  end
end

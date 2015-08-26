require 'test_helper'

class BusinessesControllerTest < ActionController::TestCase
  setup do
    @business = businesses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:businesses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create business" do
    assert_difference('Business.count') do
      post :create, business: { Number_of_employees: @business.Number_of_employees, Postal_Code: @business.Postal_Code, address: @business.address, business_description: @business.business_description, business_name: @business.business_name, business_type: @business.business_type, city_id: @business.city_id, country_id: @business.country_id, logo: @business.logo, name: @business.name, rfc: @business.rfc, sector: @business.sector, state_id: @business.state_id, user_id: @business.user_id, web: @business.web }
    end

    assert_redirected_to business_path(assigns(:business))
  end

  test "should show business" do
    get :show, id: @business
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @business
    assert_response :success
  end

  test "should update business" do
    patch :update, id: @business, business: { Number_of_employees: @business.Number_of_employees, Postal_Code: @business.Postal_Code, address: @business.address, business_description: @business.business_description, business_name: @business.business_name, business_type: @business.business_type, city_id: @business.city_id, country_id: @business.country_id, logo: @business.logo, name: @business.name, rfc: @business.rfc, sector: @business.sector, state_id: @business.state_id, user_id: @business.user_id, web: @business.web }
    assert_redirected_to business_path(assigns(:business))
  end

  test "should destroy business" do
    assert_difference('Business.count', -1) do
      delete :destroy, id: @business
    end

    assert_redirected_to businesses_path
  end
end

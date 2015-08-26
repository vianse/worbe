require 'test_helper'

class ContactsControllerTest < ActionController::TestCase
  setup do
    @contact = contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contact" do
    assert_difference('Contact.count') do
      post :create, contact: { business_id: @contact.business_id, email: @contact.email, ext: @contact.ext, fixed_phone: @contact.fixed_phone, last_name: @contact.last_name, mobile_phone: @contact.mobile_phone, name: @contact.name, office: @contact.office, office_phone: @contact.office_phone }
    end

    assert_redirected_to contact_path(assigns(:contact))
  end

  test "should show contact" do
    get :show, id: @contact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contact
    assert_response :success
  end

  test "should update contact" do
    patch :update, id: @contact, contact: { business_id: @contact.business_id, email: @contact.email, ext: @contact.ext, fixed_phone: @contact.fixed_phone, last_name: @contact.last_name, mobile_phone: @contact.mobile_phone, name: @contact.name, office: @contact.office, office_phone: @contact.office_phone }
    assert_redirected_to contact_path(assigns(:contact))
  end

  test "should destroy contact" do
    assert_difference('Contact.count', -1) do
      delete :destroy, id: @contact
    end

    assert_redirected_to contacts_path
  end
end

require 'test_helper'

class MyTagsControllerTest < ActionController::TestCase
  setup do
    @my_tag = my_tags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_tags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_tag" do
    assert_difference('MyTag.count') do
      post :create, my_tag: { cv_id: @my_tag.cv_id, idioma_id: @my_tag.idioma_id, tag_id: @my_tag.tag_id, user_id: @my_tag.user_id }
    end

    assert_redirected_to my_tag_path(assigns(:my_tag))
  end

  test "should show my_tag" do
    get :show, id: @my_tag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my_tag
    assert_response :success
  end

  test "should update my_tag" do
    patch :update, id: @my_tag, my_tag: { cv_id: @my_tag.cv_id, idioma_id: @my_tag.idioma_id, tag_id: @my_tag.tag_id, user_id: @my_tag.user_id }
    assert_redirected_to my_tag_path(assigns(:my_tag))
  end

  test "should destroy my_tag" do
    assert_difference('MyTag.count', -1) do
      delete :destroy, id: @my_tag
    end

    assert_redirected_to my_tags_path
  end
end

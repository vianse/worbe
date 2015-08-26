require 'test_helper'

class PublicoControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end

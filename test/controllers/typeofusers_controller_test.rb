require 'test_helper'

class TypeofusersControllerTest < ActionController::TestCase
  setup do
    @typeofuser = typeofusers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:typeofusers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create typeofuser" do
    assert_difference('Typeofuser.count') do
      post :create, typeofuser: { user_type: @typeofuser.user_type }
    end

    assert_redirected_to typeofuser_path(assigns(:typeofuser))
  end

  test "should show typeofuser" do
    get :show, id: @typeofuser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @typeofuser
    assert_response :success
  end

  test "should update typeofuser" do
    patch :update, id: @typeofuser, typeofuser: { user_type: @typeofuser.user_type }
    assert_redirected_to typeofuser_path(assigns(:typeofuser))
  end

  test "should destroy typeofuser" do
    assert_difference('Typeofuser.count', -1) do
      delete :destroy, id: @typeofuser
    end

    assert_redirected_to typeofusers_path
  end
end

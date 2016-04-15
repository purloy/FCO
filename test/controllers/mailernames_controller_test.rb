require 'test_helper'

class MailernamesControllerTest < ActionController::TestCase
  setup do
    @mailername = mailernames(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mailernames)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mailername" do
    assert_difference('Mailername.count') do
      post :create, mailername: { mailer_name: @mailername.mailer_name }
    end

    assert_redirected_to mailername_path(assigns(:mailername))
  end

  test "should show mailername" do
    get :show, id: @mailername
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mailername
    assert_response :success
  end

  test "should update mailername" do
    patch :update, id: @mailername, mailername: { mailer_name: @mailername.mailer_name }
    assert_redirected_to mailername_path(assigns(:mailername))
  end

  test "should destroy mailername" do
    assert_difference('Mailername.count', -1) do
      delete :destroy, id: @mailername
    end

    assert_redirected_to mailernames_path
  end
end

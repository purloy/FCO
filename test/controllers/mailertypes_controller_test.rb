require 'test_helper'

class MailertypesControllerTest < ActionController::TestCase
  setup do
    @mailertype = mailertypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mailertypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mailertype" do
    assert_difference('Mailertype.count') do
      post :create, mailertype: { mailer_type: @mailertype.mailer_type }
    end

    assert_redirected_to mailertype_path(assigns(:mailertype))
  end

  test "should show mailertype" do
    get :show, id: @mailertype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mailertype
    assert_response :success
  end

  test "should update mailertype" do
    patch :update, id: @mailertype, mailertype: { mailer_type: @mailertype.mailer_type }
    assert_redirected_to mailertype_path(assigns(:mailertype))
  end

  test "should destroy mailertype" do
    assert_difference('Mailertype.count', -1) do
      delete :destroy, id: @mailertype
    end

    assert_redirected_to mailertypes_path
  end
end

require 'test_helper'

class MailerlistsControllerTest < ActionController::TestCase
  setup do
    @mailerlist = mailerlists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mailerlists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mailerlist" do
    assert_difference('Mailerlist.count') do
      post :create, mailerlist: { description: @mailerlist.description, mailername_id: @mailerlist.mailername_id, mailertype_id: @mailerlist.mailertype_id, recepient: @mailerlist.recepient }
    end

    assert_redirected_to mailerlist_path(assigns(:mailerlist))
  end

  test "should show mailerlist" do
    get :show, id: @mailerlist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mailerlist
    assert_response :success
  end

  test "should update mailerlist" do
    patch :update, id: @mailerlist, mailerlist: { description: @mailerlist.description, mailername_id: @mailerlist.mailername_id, mailertype_id: @mailerlist.mailertype_id, recepient: @mailerlist.recepient }
    assert_redirected_to mailerlist_path(assigns(:mailerlist))
  end

  test "should destroy mailerlist" do
    assert_difference('Mailerlist.count', -1) do
      delete :destroy, id: @mailerlist
    end

    assert_redirected_to mailerlists_path
  end
end

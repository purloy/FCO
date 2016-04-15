require 'test_helper'

class UserdetailsControllerTest < ActionController::TestCase
  setup do
    @userdetail = userdetails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:userdetails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create userdetail" do
    assert_difference('Userdetail.count') do
      post :create, userdetail: { assistant_name: @userdetail.assistant_name, assistant_tel_no: @userdetail.assistant_tel_no, date_of_birth: @userdetail.date_of_birth, department: @userdetail.department, event_attended: @userdetail.event_attended, event_invited: @userdetail.event_invited, first_name: @userdetail.first_name, last_name: @userdetail.last_name, middle_name: @userdetail.middle_name, nationality: @userdetail.nationality, note: @userdetail.note, organization: @userdetail.organization, salutation: @userdetail.salutation, work_address: @userdetail.work_address, work_email: @userdetail.work_email, work_fax: @userdetail.work_fax, work_internet: @userdetail.work_internet, work_mobile: @userdetail.work_mobile }
    end

    assert_redirected_to userdetail_path(assigns(:userdetail))
  end

  test "should show userdetail" do
    get :show, id: @userdetail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @userdetail
    assert_response :success
  end

  test "should update userdetail" do
    patch :update, id: @userdetail, userdetail: { assistant_name: @userdetail.assistant_name, assistant_tel_no: @userdetail.assistant_tel_no, date_of_birth: @userdetail.date_of_birth, department: @userdetail.department, event_attended: @userdetail.event_attended, event_invited: @userdetail.event_invited, first_name: @userdetail.first_name, last_name: @userdetail.last_name, middle_name: @userdetail.middle_name, nationality: @userdetail.nationality, note: @userdetail.note, organization: @userdetail.organization, salutation: @userdetail.salutation, work_address: @userdetail.work_address, work_email: @userdetail.work_email, work_fax: @userdetail.work_fax, work_internet: @userdetail.work_internet, work_mobile: @userdetail.work_mobile }
    assert_redirected_to userdetail_path(assigns(:userdetail))
  end

  test "should destroy userdetail" do
    assert_difference('Userdetail.count', -1) do
      delete :destroy, id: @userdetail
    end

    assert_redirected_to userdetails_path
  end
end

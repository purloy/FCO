require 'test_helper'

class MclustersControllerTest < ActionController::TestCase
  setup do
    @mcluster = mclusters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mclusters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mcluster" do
    assert_difference('Mcluster.count') do
      post :create, mcluster: { cluster_name: @mcluster.cluster_name, feature: @mcluster.feature, members: @mcluster.members }
    end

    assert_redirected_to mcluster_path(assigns(:mcluster))
  end

  test "should show mcluster" do
    get :show, id: @mcluster
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mcluster
    assert_response :success
  end

  test "should update mcluster" do
    patch :update, id: @mcluster, mcluster: { cluster_name: @mcluster.cluster_name, feature: @mcluster.feature, members: @mcluster.members }
    assert_redirected_to mcluster_path(assigns(:mcluster))
  end

  test "should destroy mcluster" do
    assert_difference('Mcluster.count', -1) do
      delete :destroy, id: @mcluster
    end

    assert_redirected_to mclusters_path
  end
end

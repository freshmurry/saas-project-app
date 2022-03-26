require 'test_helper'

class ArtifectsControllerTest < ActionController::TestCase
  setup do
    @artifect = artifects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artifects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artifect" do
    assert_difference('Artifect.count') do
      post :create, artifect: { key: @artifect.key, name: @artifect.name, project_id: @artifect.project_id }
    end

    assert_redirected_to artifect_path(assigns(:artifect))
  end

  test "should show artifect" do
    get :show, id: @artifect
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artifect
    assert_response :success
  end

  test "should update artifect" do
    patch :update, id: @artifect, artifect: { key: @artifect.key, name: @artifect.name, project_id: @artifect.project_id }
    assert_redirected_to artifect_path(assigns(:artifect))
  end

  test "should destroy artifect" do
    assert_difference('Artifect.count', -1) do
      delete :destroy, id: @artifect
    end

    assert_redirected_to artifects_path
  end
end

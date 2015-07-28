require 'test_helper'

class JohndataControllerTest < ActionController::TestCase
  setup do
    @johndatum = johndata(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:johndata)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create johndatum" do
    assert_difference('Johndatum.count') do
      post :create, johndatum: { bio: @johndatum.bio, birthday: @johndatum.birthday, is: @johndatum.is, name: @johndatum.name, what: @johndatum.what, your: @johndatum.your }
    end

    assert_redirected_to johndatum_path(assigns(:johndatum))
  end

  test "should show johndatum" do
    get :show, id: @johndatum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @johndatum
    assert_response :success
  end

  test "should update johndatum" do
    patch :update, id: @johndatum, johndatum: { bio: @johndatum.bio, birthday: @johndatum.birthday, is: @johndatum.is, name: @johndatum.name, what: @johndatum.what, your: @johndatum.your }
    assert_redirected_to johndatum_path(assigns(:johndatum))
  end

  test "should destroy johndatum" do
    assert_difference('Johndatum.count', -1) do
      delete :destroy, id: @johndatum
    end

    assert_redirected_to johndata_path
  end
end

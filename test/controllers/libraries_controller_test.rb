require 'test_helper'

class LibrariesControllerTest < ActionController::TestCase
  setup do
    @library = libraries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:libraries)
  end

  test "should create library" do
    assert_difference('Library.count') do
      post :create, library: { name: @library.name }
    end

    assert_response 201
  end

  test "should show library" do
    get :show, id: @library
    assert_response :success
  end

  test "should update library" do
    put :update, id: @library, library: { name: @library.name }
    assert_response 204
  end

  test "should destroy library" do
    assert_difference('Library.count', -1) do
      delete :destroy, id: @library
    end

    assert_response 204
  end
end

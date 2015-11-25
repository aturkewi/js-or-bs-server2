require 'test_helper'

class FakeLibrariesControllerTest < ActionController::TestCase
  setup do
    @fake_library = fake_libraries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fake_libraries)
  end

  test "should create fake_library" do
    assert_difference('FakeLibrary.count') do
      post :create, fake_library: { name: @fake_library.name }
    end

    assert_response 201
  end

  test "should show fake_library" do
    get :show, id: @fake_library
    assert_response :success
  end

  test "should update fake_library" do
    put :update, id: @fake_library, fake_library: { name: @fake_library.name }
    assert_response 204
  end

  test "should destroy fake_library" do
    assert_difference('FakeLibrary.count', -1) do
      delete :destroy, id: @fake_library
    end

    assert_response 204
  end
end

require 'test_helper'

class SecretMessagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:secret_messages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create secret_messages" do
    assert_difference('SecretMessages.count') do
      post :create, :secret_messages => { }
    end

    assert_redirected_to secret_messages_path(assigns(:secret_messages))
  end

  test "should show secret_messages" do
    get :show, :id => secret_messages(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => secret_messages(:one).to_param
    assert_response :success
  end

  test "should update secret_messages" do
    put :update, :id => secret_messages(:one).to_param, :secret_messages => { }
    assert_redirected_to secret_messages_path(assigns(:secret_messages))
  end

  test "should destroy secret_messages" do
    assert_difference('SecretMessages.count', -1) do
      delete :destroy, :id => secret_messages(:one).to_param
    end

    assert_redirected_to secret_messages_path
  end
end

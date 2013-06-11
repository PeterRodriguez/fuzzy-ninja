require 'test_helper'

class InboundMessagesControllerTest < ActionController::TestCase
  setup do
    @inbound_message = inbound_messages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inbound_messages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inbound_message" do
    assert_difference('InboundMessage.count') do
      post :create, inbound_message: { message: @inbound_message.message, range_id: @inbound_message.range_id, recipient: @inbound_message.recipient, sender: @inbound_message.sender }
    end

    assert_redirected_to inbound_message_path(assigns(:inbound_message))
  end

  test "should show inbound_message" do
    get :show, id: @inbound_message
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inbound_message
    assert_response :success
  end

  test "should update inbound_message" do
    put :update, id: @inbound_message, inbound_message: { message: @inbound_message.message, range_id: @inbound_message.range_id, recipient: @inbound_message.recipient, sender: @inbound_message.sender }
    assert_redirected_to inbound_message_path(assigns(:inbound_message))
  end

  test "should destroy inbound_message" do
    assert_difference('InboundMessage.count', -1) do
      delete :destroy, id: @inbound_message
    end

    assert_redirected_to inbound_messages_path
  end
end

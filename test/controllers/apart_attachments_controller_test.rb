require 'test_helper'

class ApartAttachmentsControllerTest < ActionController::TestCase
  setup do
    @apart_attachment = apart_attachments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:apart_attachments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apart_attachment" do
    assert_difference('ApartAttachment.count') do
      post :create, apart_attachment: { apart_id: @apart_attachment.apart_id, image: @apart_attachment.image }
    end

    assert_redirected_to apart_attachment_path(assigns(:apart_attachment))
  end

  test "should show apart_attachment" do
    get :show, id: @apart_attachment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @apart_attachment
    assert_response :success
  end

  test "should update apart_attachment" do
    patch :update, id: @apart_attachment, apart_attachment: { apart_id: @apart_attachment.apart_id, image: @apart_attachment.image }
    assert_redirected_to apart_attachment_path(assigns(:apart_attachment))
  end

  test "should destroy apart_attachment" do
    assert_difference('ApartAttachment.count', -1) do
      delete :destroy, id: @apart_attachment
    end

    assert_redirected_to apart_attachments_path
  end
end

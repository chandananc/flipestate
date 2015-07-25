require 'test_helper'

class ApartmentAttachmentsControllerTest < ActionController::TestCase
  setup do
    @apartment_attachment = apartment_attachments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:apartment_attachments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apartment_attachment" do
    assert_difference('ApartmentAttachment.count') do
      post :create, apartment_attachment: { apatment_id: @apartment_attachment.apatment_id, image: @apartment_attachment.image }
    end

    assert_redirected_to apartment_attachment_path(assigns(:apartment_attachment))
  end

  test "should show apartment_attachment" do
    get :show, id: @apartment_attachment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @apartment_attachment
    assert_response :success
  end

  test "should update apartment_attachment" do
    patch :update, id: @apartment_attachment, apartment_attachment: { apatment_id: @apartment_attachment.apatment_id, image: @apartment_attachment.image }
    assert_redirected_to apartment_attachment_path(assigns(:apartment_attachment))
  end

  test "should destroy apartment_attachment" do
    assert_difference('ApartmentAttachment.count', -1) do
      delete :destroy, id: @apartment_attachment
    end

    assert_redirected_to apartment_attachments_path
  end
end

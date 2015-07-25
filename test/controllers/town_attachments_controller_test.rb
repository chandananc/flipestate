require 'test_helper'

class TownAttachmentsControllerTest < ActionController::TestCase
  setup do
    @town_attachment = town_attachments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:town_attachments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create town_attachment" do
    assert_difference('TownAttachment.count') do
      post :create, town_attachment: { image: @town_attachment.image, town_id: @town_attachment.town_id }
    end

    assert_redirected_to town_attachment_path(assigns(:town_attachment))
  end

  test "should show town_attachment" do
    get :show, id: @town_attachment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @town_attachment
    assert_response :success
  end

  test "should update town_attachment" do
    patch :update, id: @town_attachment, town_attachment: { image: @town_attachment.image, town_id: @town_attachment.town_id }
    assert_redirected_to town_attachment_path(assigns(:town_attachment))
  end

  test "should destroy town_attachment" do
    assert_difference('TownAttachment.count', -1) do
      delete :destroy, id: @town_attachment
    end

    assert_redirected_to town_attachments_path
  end
end

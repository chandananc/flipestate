require 'test_helper'

class ApartsControllerTest < ActionController::TestCase
  setup do
    @apart = aparts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aparts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apart" do
    assert_difference('Apart.count') do
      post :create, apart: { address: @apart.address, built_year: @apart.built_year, cost: @apart.cost, image: @apart.image, name: @apart.name, rooms: @apart.rooms, sqft: @apart.sqft }
    end

    assert_redirected_to apart_path(assigns(:apart))
  end

  test "should show apart" do
    get :show, id: @apart
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @apart
    assert_response :success
  end

  test "should update apart" do
    patch :update, id: @apart, apart: { address: @apart.address, built_year: @apart.built_year, cost: @apart.cost, image: @apart.image, name: @apart.name, rooms: @apart.rooms, sqft: @apart.sqft }
    assert_redirected_to apart_path(assigns(:apart))
  end

  test "should destroy apart" do
    assert_difference('Apart.count', -1) do
      delete :destroy, id: @apart
    end

    assert_redirected_to aparts_path
  end
end

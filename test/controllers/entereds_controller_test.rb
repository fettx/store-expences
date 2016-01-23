require 'test_helper'

class EnteredsControllerTest < ActionController::TestCase
  setup do
    @entered = entereds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entereds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entered" do
    assert_difference('Entered.count') do
      post :create, entered: { create_at: @entered.create_at, name: @entered.name, price: @entered.price }
    end

    assert_redirected_to entered_path(assigns(:entered))
  end

  test "should show entered" do
    get :show, id: @entered
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entered
    assert_response :success
  end

  test "should update entered" do
    patch :update, id: @entered, entered: { create_at: @entered.create_at, name: @entered.name, price: @entered.price }
    assert_redirected_to entered_path(assigns(:entered))
  end

  test "should destroy entered" do
    assert_difference('Entered.count', -1) do
      delete :destroy, id: @entered
    end

    assert_redirected_to entereds_path
  end
end

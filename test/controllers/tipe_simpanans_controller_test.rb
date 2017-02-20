require 'test_helper'

class TipeSimpanansControllerTest < ActionController::TestCase
  setup do
    @tipe_simpanan = tipe_simpanans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipe_simpanans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipe_simpanan" do
    assert_difference('TipeSimpanan.count') do
      post :create, tipe_simpanan: { ident_name: @tipe_simpanan.ident_name, name: @tipe_simpanan.name }
    end

    assert_redirected_to tipe_simpanan_path(assigns(:tipe_simpanan))
  end

  test "should show tipe_simpanan" do
    get :show, id: @tipe_simpanan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipe_simpanan
    assert_response :success
  end

  test "should update tipe_simpanan" do
    patch :update, id: @tipe_simpanan, tipe_simpanan: { ident_name: @tipe_simpanan.ident_name, name: @tipe_simpanan.name }
    assert_redirected_to tipe_simpanan_path(assigns(:tipe_simpanan))
  end

  test "should destroy tipe_simpanan" do
    assert_difference('TipeSimpanan.count', -1) do
      delete :destroy, id: @tipe_simpanan
    end

    assert_redirected_to tipe_simpanans_path
  end
end

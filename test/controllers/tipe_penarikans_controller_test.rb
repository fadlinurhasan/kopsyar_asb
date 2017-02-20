require 'test_helper'

class TipePenarikansControllerTest < ActionController::TestCase
  setup do
    @tipe_penarikan = tipe_penarikans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipe_penarikans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipe_penarikan" do
    assert_difference('TipePenarikan.count') do
      post :create, tipe_penarikan: { ident_name: @tipe_penarikan.ident_name, name: @tipe_penarikan.name, penarikan_history: @tipe_penarikan.penarikan_history }
    end

    assert_redirected_to tipe_penarikan_path(assigns(:tipe_penarikan))
  end

  test "should show tipe_penarikan" do
    get :show, id: @tipe_penarikan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipe_penarikan
    assert_response :success
  end

  test "should update tipe_penarikan" do
    patch :update, id: @tipe_penarikan, tipe_penarikan: { ident_name: @tipe_penarikan.ident_name, name: @tipe_penarikan.name, penarikan_history: @tipe_penarikan.penarikan_history }
    assert_redirected_to tipe_penarikan_path(assigns(:tipe_penarikan))
  end

  test "should destroy tipe_penarikan" do
    assert_difference('TipePenarikan.count', -1) do
      delete :destroy, id: @tipe_penarikan
    end

    assert_redirected_to tipe_penarikans_path
  end
end

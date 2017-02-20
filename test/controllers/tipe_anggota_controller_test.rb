require 'test_helper'

class TipeAnggotaControllerTest < ActionController::TestCase
  setup do
    @tipe_anggotum = tipe_anggota(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipe_anggota)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipe_anggotum" do
    assert_difference('TipeAnggotum.count') do
      post :create, tipe_anggotum: { ident_name: @tipe_anggotum.ident_name, name: @tipe_anggotum.name, user: @tipe_anggotum.user }
    end

    assert_redirected_to tipe_anggotum_path(assigns(:tipe_anggotum))
  end

  test "should show tipe_anggotum" do
    get :show, id: @tipe_anggotum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipe_anggotum
    assert_response :success
  end

  test "should update tipe_anggotum" do
    patch :update, id: @tipe_anggotum, tipe_anggotum: { ident_name: @tipe_anggotum.ident_name, name: @tipe_anggotum.name, user: @tipe_anggotum.user }
    assert_redirected_to tipe_anggotum_path(assigns(:tipe_anggotum))
  end

  test "should destroy tipe_anggotum" do
    assert_difference('TipeAnggotum.count', -1) do
      delete :destroy, id: @tipe_anggotum
    end

    assert_redirected_to tipe_anggota_path
  end
end

require 'test_helper'

class TipeNasabahsControllerTest < ActionController::TestCase
  setup do
    @tipe_nasabah = tipe_nasabahs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipe_nasabahs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipe_nasabah" do
    assert_difference('TipeNasabah.count') do
      post :create, tipe_nasabah: { ident_name: @tipe_nasabah.ident_name, name: @tipe_nasabah.name, user: @tipe_nasabah.user }
    end

    assert_redirected_to tipe_nasabah_path(assigns(:tipe_nasabah))
  end

  test "should show tipe_nasabah" do
    get :show, id: @tipe_nasabah
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipe_nasabah
    assert_response :success
  end

  test "should update tipe_nasabah" do
    patch :update, id: @tipe_nasabah, tipe_nasabah: { ident_name: @tipe_nasabah.ident_name, name: @tipe_nasabah.name, user: @tipe_nasabah.user }
    assert_redirected_to tipe_nasabah_path(assigns(:tipe_nasabah))
  end

  test "should destroy tipe_nasabah" do
    assert_difference('TipeNasabah.count', -1) do
      delete :destroy, id: @tipe_nasabah
    end

    assert_redirected_to tipe_nasabahs_path
  end
end

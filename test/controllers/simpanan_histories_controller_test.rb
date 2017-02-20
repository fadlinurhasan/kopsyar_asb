require 'test_helper'

class SimpananHistoriesControllerTest < ActionController::TestCase
  setup do
    @simpanan_history = simpanan_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:simpanan_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create simpanan_history" do
    assert_difference('SimpananHistory.count') do
      post :create, simpanan_history: { catatan: @simpanan_history.catatan, nasabah_id: @simpanan_history.nasabah_id, nilai_simpanan: @simpanan_history.nilai_simpanan, petugas_id: @simpanan_history.petugas_id, tipe_simpanan_id: @simpanan_history.tipe_simpanan_id }
    end

    assert_redirected_to simpanan_history_path(assigns(:simpanan_history))
  end

  test "should show simpanan_history" do
    get :show, id: @simpanan_history
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @simpanan_history
    assert_response :success
  end

  test "should update simpanan_history" do
    patch :update, id: @simpanan_history, simpanan_history: { catatan: @simpanan_history.catatan, nasabah_id: @simpanan_history.nasabah_id, nilai_simpanan: @simpanan_history.nilai_simpanan, petugas_id: @simpanan_history.petugas_id, tipe_simpanan_id: @simpanan_history.tipe_simpanan_id }
    assert_redirected_to simpanan_history_path(assigns(:simpanan_history))
  end

  test "should destroy simpanan_history" do
    assert_difference('SimpananHistory.count', -1) do
      delete :destroy, id: @simpanan_history
    end

    assert_redirected_to simpanan_histories_path
  end
end

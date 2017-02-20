require 'test_helper'

class PenarikanHistoriesControllerTest < ActionController::TestCase
  setup do
    @penarikan_history = penarikan_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:penarikan_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create penarikan_history" do
    assert_difference('PenarikanHistory.count') do
      post :create, penarikan_history: { catatan: @penarikan_history.catatan, nasabah_id: @penarikan_history.nasabah_id, nilai_penarikan: @penarikan_history.nilai_penarikan, petugas_id: @penarikan_history.petugas_id, tipe_penarikan_id: @penarikan_history.tipe_penarikan_id }
    end

    assert_redirected_to penarikan_history_path(assigns(:penarikan_history))
  end

  test "should show penarikan_history" do
    get :show, id: @penarikan_history
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @penarikan_history
    assert_response :success
  end

  test "should update penarikan_history" do
    patch :update, id: @penarikan_history, penarikan_history: { catatan: @penarikan_history.catatan, nasabah_id: @penarikan_history.nasabah_id, nilai_penarikan: @penarikan_history.nilai_penarikan, petugas_id: @penarikan_history.petugas_id, tipe_penarikan_id: @penarikan_history.tipe_penarikan_id }
    assert_redirected_to penarikan_history_path(assigns(:penarikan_history))
  end

  test "should destroy penarikan_history" do
    assert_difference('PenarikanHistory.count', -1) do
      delete :destroy, id: @penarikan_history
    end

    assert_redirected_to penarikan_histories_path
  end
end

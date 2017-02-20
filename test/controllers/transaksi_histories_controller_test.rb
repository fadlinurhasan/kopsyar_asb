require 'test_helper'

class TransaksiHistoriesControllerTest < ActionController::TestCase
  setup do
    @transaksi_history = transaksi_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transaksi_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transaksi_history" do
    assert_difference('TransaksiHistory.count') do
      post :create, transaksi_history: { penarikan_history_id: @transaksi_history.penarikan_history_id, simpanan_history_id: @transaksi_history.simpanan_history_id, user_id: @transaksi_history.user_id }
    end

    assert_redirected_to transaksi_history_path(assigns(:transaksi_history))
  end

  test "should show transaksi_history" do
    get :show, id: @transaksi_history
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @transaksi_history
    assert_response :success
  end

  test "should update transaksi_history" do
    patch :update, id: @transaksi_history, transaksi_history: { penarikan_history_id: @transaksi_history.penarikan_history_id, simpanan_history_id: @transaksi_history.simpanan_history_id, user_id: @transaksi_history.user_id }
    assert_redirected_to transaksi_history_path(assigns(:transaksi_history))
  end

  test "should destroy transaksi_history" do
    assert_difference('TransaksiHistory.count', -1) do
      delete :destroy, id: @transaksi_history
    end

    assert_redirected_to transaksi_histories_path
  end
end

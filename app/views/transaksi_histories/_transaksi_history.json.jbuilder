json.extract! transaksi_history, :id, :user_id, :simpanan_history_id, :penarikan_history_id, :created_at, :updated_at
json.url transaksi_history_url(transaksi_history, format: :json)